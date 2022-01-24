#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int bits_per_pixel; int xres_virtual; int yres_virtual; } ;
struct TYPE_3__ {int line_length; int /*<<< orphan*/  visual; } ;
struct fb_info {int screen_size; TYPE_2__ var; TYPE_1__ fix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_VISUAL_MONO10 ; 
 int /*<<< orphan*/  FB_VISUAL_PSEUDOCOLOR ; 
 int /*<<< orphan*/  FB_VISUAL_TRUECOLOR ; 
 int /*<<< orphan*/  panel ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(struct fb_info *fbi)
{
	/* FIX!!!! This also needs to take the window pixel format into account!!! */

	/* Update var-dependent FB info */
	if (FUNC0(panel)) {
		if (fbi->var.bits_per_pixel <= 8) {
			/* palettized */
			fbi->fix.visual = FB_VISUAL_PSEUDOCOLOR;
			fbi->fix.line_length = fbi->var.xres_virtual /
				(8/fbi->var.bits_per_pixel);
		} else {
			/* non-palettized */
			fbi->fix.visual = FB_VISUAL_TRUECOLOR;
			fbi->fix.line_length = fbi->var.xres_virtual * (fbi->var.bits_per_pixel / 8);
		}
	} else {
		/* mono FIX!!! mono 8 and 4 bits */
		fbi->fix.visual = FB_VISUAL_MONO10;
		fbi->fix.line_length = fbi->var.xres_virtual / 8;
	}

	fbi->screen_size = fbi->fix.line_length * fbi->var.yres_virtual;
	FUNC1("line length: %d\n", fbi->fix.line_length);
	FUNC1("bits_per_pixel: %d\n", fbi->var.bits_per_pixel);
}