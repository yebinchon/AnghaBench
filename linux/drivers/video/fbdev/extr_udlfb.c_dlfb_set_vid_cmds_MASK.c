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
typedef  int u16 ;
struct fb_var_screeninfo {int left_margin; int hsync_len; int xres; int upper_margin; int vsync_len; int yres; int right_margin; int lower_margin; int pixclock; } ;

/* Variables and functions */
 char* FUNC0 (char*,int,int) ; 
 char* FUNC1 (char*,int,int) ; 
 char* FUNC2 (char*,int,int) ; 

__attribute__((used)) static char *FUNC3(char *wrptr, struct fb_var_screeninfo *var)
{
	u16 xds, yds;
	u16 xde, yde;
	u16 yec;

	/* x display start */
	xds = var->left_margin + var->hsync_len;
	wrptr = FUNC2(wrptr, 0x01, xds);
	/* x display end */
	xde = xds + var->xres;
	wrptr = FUNC2(wrptr, 0x03, xde);

	/* y display start */
	yds = var->upper_margin + var->vsync_len;
	wrptr = FUNC2(wrptr, 0x05, yds);
	/* y display end */
	yde = yds + var->yres;
	wrptr = FUNC2(wrptr, 0x07, yde);

	/* x end count is active + blanking - 1 */
	wrptr = FUNC2(wrptr, 0x09,
			xde + var->right_margin - 1);

	/* libdlo hardcodes hsync start to 1 */
	wrptr = FUNC2(wrptr, 0x0B, 1);

	/* hsync end is width of sync pulse + 1 */
	wrptr = FUNC2(wrptr, 0x0D, var->hsync_len + 1);

	/* hpixels is active pixels */
	wrptr = FUNC0(wrptr, 0x0F, var->xres);

	/* yendcount is vertical active + vertical blanking */
	yec = var->yres + var->upper_margin + var->lower_margin +
			var->vsync_len;
	wrptr = FUNC2(wrptr, 0x11, yec);

	/* libdlo hardcodes vsync start to 0 */
	wrptr = FUNC2(wrptr, 0x13, 0);

	/* vsync end is width of vsync pulse */
	wrptr = FUNC2(wrptr, 0x15, var->vsync_len);

	/* vpixels is active pixels */
	wrptr = FUNC0(wrptr, 0x17, var->yres);

	/* convert picoseconds to 5kHz multiple for pclk5k = x * 1E12/5k */
	wrptr = FUNC1(wrptr, 0x1B,
			200*1000*1000/var->pixclock);

	return wrptr;
}