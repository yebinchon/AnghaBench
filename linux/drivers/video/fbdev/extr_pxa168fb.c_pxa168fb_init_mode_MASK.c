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
typedef  long long u64 ;
typedef  int u32 ;
struct pxa168fb_mach_info {int dummy; } ;
struct pxa168fb_info {int /*<<< orphan*/  dev; } ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int xres_virtual; int xres; int yres_virtual; int bits_per_pixel; int yres; int left_margin; int right_margin; int hsync_len; int upper_margin; int lower_margin; int vsync_len; int pixclock; } ;
struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; struct fb_var_screeninfo var; int /*<<< orphan*/  modelist; struct pxa168fb_info* par; } ;

/* Variables and functions */
 int DEFAULT_REFRESH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (long long,int) ; 
 struct fb_videomode* FUNC2 (struct fb_var_screeninfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_var_screeninfo*,struct fb_videomode const*) ; 

__attribute__((used)) static int FUNC4(struct fb_info *info,
			      struct pxa168fb_mach_info *mi)
{
	struct pxa168fb_info *fbi = info->par;
	struct fb_var_screeninfo *var = &info->var;
	int ret = 0;
	u32 total_w, total_h, refresh;
	u64 div_result;
	const struct fb_videomode *m;

	/*
	 * Set default value
	 */
	refresh = DEFAULT_REFRESH;

	/* try to find best video mode. */
	m = FUNC2(&info->var, &info->modelist);
	if (m)
		FUNC3(&info->var, m);

	/* Init settings. */
	var->xres_virtual = var->xres;
	var->yres_virtual = info->fix.smem_len /
		(var->xres_virtual * (var->bits_per_pixel >> 3));
	FUNC0(fbi->dev, "pxa168fb: find best mode: res = %dx%d\n",
				var->xres, var->yres);

	/* correct pixclock. */
	total_w = var->xres + var->left_margin + var->right_margin +
		  var->hsync_len;
	total_h = var->yres + var->upper_margin + var->lower_margin +
		  var->vsync_len;

	div_result = 1000000000000ll;
	FUNC1(div_result, total_w * total_h * refresh);
	var->pixclock = (u32)div_result;

	return ret;
}