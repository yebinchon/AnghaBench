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
struct TYPE_2__ {unsigned int width; unsigned int height; } ;
struct vc_data {size_t vc_num; TYPE_1__ vc_font; } ;
struct fb_var_screeninfo {int xres; int yres; int activate; } ;
struct fbcon_ops {struct fb_var_screeninfo var; int /*<<< orphan*/  rotate; } ;
struct fbcon_display {int dummy; } ;
struct fb_videomode {int dummy; } ;
struct fb_info {struct fb_var_screeninfo var; int /*<<< orphan*/  modelist; struct fbcon_ops* fbcon_par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int FB_ACTIVATE_FORCE ; 
 int FB_ACTIVATE_NOW ; 
 size_t* con2fb_map ; 
 scalar_t__ FUNC2 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_var_screeninfo*,struct fbcon_display*) ; 
 struct fbcon_display* fb_display ; 
 struct fb_videomode* FUNC4 (struct fb_var_screeninfo*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*,struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_var_screeninfo*,struct fb_videomode const*) ; 
 struct fb_info** registered_fb ; 
 int /*<<< orphan*/  FUNC7 (struct fbcon_display*,struct fb_info*,struct vc_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct fbcon_display*,struct fb_var_screeninfo*,struct fb_info*) ; 

__attribute__((used)) static int FUNC9(struct vc_data *vc, unsigned int width, 
			unsigned int height, unsigned int user)
{
	struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
	struct fbcon_ops *ops = info->fbcon_par;
	struct fbcon_display *p = &fb_display[vc->vc_num];
	struct fb_var_screeninfo var = info->var;
	int x_diff, y_diff, virt_w, virt_h, virt_fw, virt_fh;

	virt_w = FUNC1(ops->rotate, width, height);
	virt_h = FUNC1(ops->rotate, height, width);
	virt_fw = FUNC1(ops->rotate, vc->vc_font.width,
				 vc->vc_font.height);
	virt_fh = FUNC1(ops->rotate, vc->vc_font.height,
				 vc->vc_font.width);
	var.xres = virt_w * virt_fw;
	var.yres = virt_h * virt_fh;
	x_diff = info->var.xres - var.xres;
	y_diff = info->var.yres - var.yres;
	if (x_diff < 0 || x_diff > virt_fw ||
	    y_diff < 0 || y_diff > virt_fh) {
		const struct fb_videomode *mode;

		FUNC0("attempting resize %ix%i\n", var.xres, var.yres);
		mode = FUNC4(&var, &info->modelist);
		if (mode == NULL)
			return -EINVAL;
		FUNC3(&var, p);
		FUNC6(&var, mode);

		if (virt_w > var.xres/virt_fw || virt_h > var.yres/virt_fh)
			return -EINVAL;

		FUNC0("resize now %ix%i\n", var.xres, var.yres);
		if (FUNC2(vc)) {
			var.activate = FB_ACTIVATE_NOW |
				FB_ACTIVATE_FORCE;
			FUNC5(info, &var);
		}
		FUNC8(p, &info->var, info);
		ops->var = info->var;
	}
	FUNC7(p, info, vc);
	return 0;
}