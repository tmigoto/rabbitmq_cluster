# Encoding: utf-8
# frozen_string_literal: true
require 'chefspec'
require 'chefspec/berkshelf'
require 'fauxhai'
ChefSpec::Coverage.start!

require 'chef/application'

# rubocop:disable all

LOGLEVEL = :fatal
SUSE_OPTS = {
  :platform => 'suse',
  :version => '11.3',
  :log_level => LOGLEVEL,
}
REDHAT_OPTS = {
  :platform => 'redhat',
  :version => '7.2',
  :log_level => LOGLEVEL,
  :file_cache_path => '/tmp'
}
UBUNTU_OPTS = {
  :platform => 'ubuntu',
  :version => '14.04',
  :log_level => LOGLEVEL,
  :file_cache_path => '/tmp'
}
CENTOS_OPTS = {
  :platform => 'centos',
  :version => '7.0',
  :log_level => LOGLEVEL,
  :file_cache_path => '/tmp'
}
FEDORA_OPTS = {
  :platform => 'fedora',
  :version => '20',
  :log_level => LOGLEVEL,
  :file_cache_path => '/tmp'
}

# rubocop:enable all

shared_context 'rabbitmq-stubs' do
  before do
    allow_any_instance_of(Chef::Config).to receive(:file_cache_path)
      .and_return('/tmp')
  end
end
