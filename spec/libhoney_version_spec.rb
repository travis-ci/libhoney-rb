require "load_path"

LoadPath.configure do
  add sibling_directory('lib')
end

require 'irb'
require 'libhoney'

irb

RSpec.describe Libhoney, "#version" do
  it "has a non-nil VERSION" do
    expect(Libhoney::VERSION).to_not be_nil
  end

  it "has a parseable VERSION" do
    version = Gem::Version.new(Libhoney::VERSION)
    expect(version).to be_a(Gem::Version)
  end
end
