require 'benchmark'

symbol = { :foo => 'value' }
string = { 'foo' => 'value' }
integer = { 1 => 'value' }

str = 'foo'
sym = :foo
num = 1
n = 100_000_000

Benchmark.bmbm do |x|
  x.report('Symbol') { n.times { symbol[sym] } }
  x.report('String') { n.times { string[str] } }
  x.report('Integer') { n.times { integer[num] } }
end

