# frozen_string_literal: true

require 'active_support/core_ext/hash'
require 'json'

data_file = File.read('./xml-data.xml')
data_hash = Hash.from_xml(data_file)

File.open('output.json', 'w') { |file| file.write(data_hash.to_json) }
