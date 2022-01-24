#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int accel ; 
 void* bpp ; 
 int dcolor ; 
 int ddc3 ; 
 int extvga ; 
 int hsync1 ; 
 int hsync2 ; 
 char* mode_option ; 
 int mtrr ; 
 void* FUNC0 (char*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char**,char*) ; 
 int sync ; 
 void* voffset ; 
 void* vram ; 
 void* vsync1 ; 
 void* vsync2 ; 
 void* vyres ; 
 void* xres ; 
 void* yres ; 

__attribute__((used)) static int FUNC3(char *options)
{
	char *this_opt, *suffix = NULL;

	if (!options || !*options)
		return 0;
	
	while ((this_opt = FUNC2(&options, ",")) != NULL) {
		if (!FUNC1(this_opt, "mtrr", 4))
			mtrr = 1;
		else if (!FUNC1(this_opt, "accel", 5))
			accel = 1;
		else if (!FUNC1(this_opt, "extvga", 6))
			extvga = 1;
		else if (!FUNC1(this_opt, "sync", 4))
			sync = 1;
		else if (!FUNC1(this_opt, "vram:", 5))
			vram = (FUNC0(this_opt+5, NULL, 0));
		else if (!FUNC1(this_opt, "voffset:", 8))
			voffset = (FUNC0(this_opt+8, NULL, 0));
		else if (!FUNC1(this_opt, "xres:", 5))
			xres = FUNC0(this_opt+5, NULL, 0);
		else if (!FUNC1(this_opt, "yres:", 5))
			yres = FUNC0(this_opt+5, NULL, 0);
		else if (!FUNC1(this_opt, "vyres:", 6))
			vyres = FUNC0(this_opt+6, NULL, 0);
		else if (!FUNC1(this_opt, "bpp:", 4))
			bpp = FUNC0(this_opt+4, NULL, 0);
		else if (!FUNC1(this_opt, "hsync1:", 7)) {
			hsync1 = FUNC0(this_opt+7, &suffix, 0);
			if (FUNC1(suffix, "H", 1)) 
				hsync1 *= 1000;
		} else if (!FUNC1(this_opt, "hsync2:", 7)) {
			hsync2 = FUNC0(this_opt+7, &suffix, 0);
			if (FUNC1(suffix, "H", 1)) 
				hsync2 *= 1000;
		} else if (!FUNC1(this_opt, "vsync1:", 7)) 
			vsync1 = FUNC0(this_opt+7, NULL, 0);
		else if (!FUNC1(this_opt, "vsync2:", 7))
			vsync2 = FUNC0(this_opt+7, NULL, 0);
		else if (!FUNC1(this_opt, "dcolor", 6))
			dcolor = 1;
		else if (!FUNC1(this_opt, "ddc3", 4))
			ddc3 = true;
		else
			mode_option = this_opt;
	}
	return 0;
}