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
struct mmpfb_info {int pix_fmt; int /*<<< orphan*/  mode; int /*<<< orphan*/  dev; } ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int yres_virtual; int yres; int xres_virtual; int bits_per_pixel; } ;
struct TYPE_2__ {int line_length; int ypanstep; int /*<<< orphan*/  visual; } ;
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/  modelist; struct fb_var_screeninfo var; struct mmpfb_info* par; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FB_VISUAL_PSEUDOCOLOR ; 
 int /*<<< orphan*/  FB_VISUAL_TRUECOLOR ; 
 int PIXFMT_PSEUDOCOLOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct fb_var_screeninfo*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct fb_var_screeninfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_var_screeninfo*,struct fb_videomode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct fb_videomode*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_var_screeninfo*,int) ; 
 int FUNC6 (struct fb_var_screeninfo*) ; 

__attribute__((used)) static int FUNC7(struct fb_info *info)
{
	struct mmpfb_info *fbi = info->par;
	struct fb_var_screeninfo *var = &info->var;
	struct fb_videomode *m;
	int pix_fmt;

	/* set pix_fmt */
	pix_fmt = FUNC6(var);
	if (pix_fmt < 0)
		return -EINVAL;
	FUNC5(var, pix_fmt);
	fbi->pix_fmt = pix_fmt;

	/* set var according to best video mode*/
	m = (struct fb_videomode *)FUNC2(var, &info->modelist);
	if (!m) {
		FUNC0(fbi->dev, "set par: no match mode, use best mode\n");
		m = (struct fb_videomode *)FUNC1(var,
				&info->modelist);
		FUNC3(var, m);
	}
	FUNC4(&fbi->mode, m, sizeof(struct fb_videomode));

	/* fix to 2* yres */
	var->yres_virtual = var->yres * 2;
	info->fix.visual = (pix_fmt == PIXFMT_PSEUDOCOLOR) ?
		FB_VISUAL_PSEUDOCOLOR : FB_VISUAL_TRUECOLOR;
	info->fix.line_length = var->xres_virtual * var->bits_per_pixel / 8;
	info->fix.ypanstep = var->yres;
	return 0;
}