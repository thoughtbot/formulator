defmodule Formulator.Mixfile do
  use Mix.Project
  @version "0.2.0"

  def project do
    [app: :formulator,
     version: @version,
     elixir: "~> 1.6",
     elixirc_paths: elixirc_paths(Mix.env),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     docs: [
       source_ref: "#{@version}",
       extras: [
         "README.md",
       ],
       main: "readme"
     ],
     package: package(),
   ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:ecto, "~> 2.1", only: :test, optional: true},
      {:ex_doc, "~> 0.18.0", only: :dev, runtime: false},
      {:gettext, ">= 0.11.0"},
      {:phoenix_ecto, "~> 3.2", only: :test, optional: true},
      {:phoenix_html, "~> 2.4"},
    ]
  end

  defp package do
    [
      description: "A form helper for creating labels and inputs with errors",
      maintainers: ["Jason Draper", "Ashley Ellis", "Josh Steiner"],
      licenses: ["MIT"],
      links: %{
        "Docs" => "https://hexdocs.pm/formulator/",
        "GitHub" => "https://github.com/thoughtbot/formulator",
        "Made by thoughtbot" => "https://thoughtbot.com/services/elixir-phoenix",
      },
    ]
  end
end
