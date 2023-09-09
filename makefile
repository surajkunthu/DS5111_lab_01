default:
	@cat makefile

synthetic_data.csv:
	wget https://gist.github.com/Niarfe/25100a860cbb660150a3fec87378d8ac

square_wave.png:
	gnuplot -e "set datafile separator ','; set term png; set output 'square_wave.png'; plot 'synthetic_data.csv' using 1:2 with lines"

fibonachi.png:
	gnuplot -e "set datafile separator ','; set term png; set output 'fibonachi.png'; plot 'synthetic_data.csv' using 1:3 with lines"

clean:
	rm synthetic_data.csv || true
	rm square_wave.png || true
	rm fibonachi.png || true

.PHONY: all_images
all_images: square_wave.png fibonachi.png
