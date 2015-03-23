#!/bin/bash

#Thanks to t184256 

for SVG in svgs/*.svg; do
	N=$(basename $SVG .svg)
	inkscape -f $SVG -w 48 -h 48 -e \
		theme/src/main/assets/icons/res/drawable-mdpi/$N.png
	inkscape -f $SVG -w 72 -h 72 -e \
		theme/src/main/assets/icons/res/drawable-hdpi/$N.png
	inkscape -f $SVG -w 96 -h 96 -e \
		theme/src/main/assets/icons/res/drawable-xhdpi/$N.png
	inkscape -f $SVG -w 144 -h 144 -e \
		theme/src/main/assets/icons/res/drawable-xxhdpi/$N.png
	inkscape -f $SVG -w 192 -h 192 -e \
		theme/src/main/assets/icons/res/drawable-xxxhdpi/$N.png
done
