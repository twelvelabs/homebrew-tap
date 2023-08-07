# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stamp < Formula
  desc "A project and file scaffolding tool"
  homepage "https://github.com/twelvelabs/stamp"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/twelvelabs/stamp/releases/download/v0.4.4/stamp_0.4.4_darwin_amd64.tar.gz"
      sha256 "23252cc3e7c9cd0c3c4ab26fb865c9e2202c47e60902caf0851f419076244392"

      def install
        bin.install "stamp"
        bash_completion.install "completions/stamp.bash" => "stamp"
        zsh_completion.install "completions/stamp.zsh" => "_stamp"
        fish_completion.install "completions/stamp.fish"
        man1.install "manpages/stamp.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/twelvelabs/stamp/releases/download/v0.4.4/stamp_0.4.4_darwin_arm64.tar.gz"
      sha256 "f8af6e795acb1059a00e12821c8bdfda65aa3e71e4ac8b62253817d7a2bdf7f4"

      def install
        bin.install "stamp"
        bash_completion.install "completions/stamp.bash" => "stamp"
        zsh_completion.install "completions/stamp.zsh" => "_stamp"
        fish_completion.install "completions/stamp.fish"
        man1.install "manpages/stamp.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/twelvelabs/stamp/releases/download/v0.4.4/stamp_0.4.4_linux_arm64.tar.gz"
      sha256 "6c8f72d47b740eb0b87f75c744fdd1ed532e3736913771c4384df8200b075a03"

      def install
        bin.install "stamp"
        bash_completion.install "completions/stamp.bash" => "stamp"
        zsh_completion.install "completions/stamp.zsh" => "_stamp"
        fish_completion.install "completions/stamp.fish"
        man1.install "manpages/stamp.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/twelvelabs/stamp/releases/download/v0.4.4/stamp_0.4.4_linux_amd64.tar.gz"
      sha256 "7dd35a0b672d2eeff0102b4c1d85cfaa32d7b7350038c046365f59b69710842a"

      def install
        bin.install "stamp"
        bash_completion.install "completions/stamp.bash" => "stamp"
        zsh_completion.install "completions/stamp.zsh" => "_stamp"
        fish_completion.install "completions/stamp.fish"
        man1.install "manpages/stamp.1.gz"
      end
    end
  end

  test do
    system "#{bin}/stamp --version"
  end
end
