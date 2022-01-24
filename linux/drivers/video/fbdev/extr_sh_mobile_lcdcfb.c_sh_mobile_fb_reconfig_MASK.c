#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  mode; } ;
struct sh_mobile_lcdc_chan {int use_count; TYPE_1__ display; } ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int /*<<< orphan*/  activate; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct fb_info {struct fb_var_screeninfo var; int /*<<< orphan*/  fbcon_par; struct sh_mobile_lcdc_chan* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_ACTIVATE_NOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,struct fb_videomode*) ; 
 scalar_t__ FUNC1 (struct fb_info*,struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_videomode*,struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_var_screeninfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*,int) ; 

__attribute__((used)) static void FUNC5(struct fb_info *info)
{
	struct sh_mobile_lcdc_chan *ch = info->par;
	struct fb_var_screeninfo var;
	struct fb_videomode mode;

	if (ch->use_count > 1 || (ch->use_count == 1 && !info->fbcon_par))
		/* More framebuffer users are active */
		return;

	FUNC2(&mode, &info->var);

	if (FUNC0(&ch->display.mode, &mode))
		return;

	/* Display has been re-plugged, framebuffer is free now, reconfigure */
	var = info->var;
	FUNC3(&var, &ch->display.mode);
	var.width = ch->display.width;
	var.height = ch->display.height;
	var.activate = FB_ACTIVATE_NOW;

	if (FUNC1(info, &var) < 0)
		/* Couldn't reconfigure, hopefully, can continue as before */
		return;

	FUNC4(info, true);
}