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
struct vc_data {size_t vc_num; } ;
struct fb_var_screeninfo {int activate; } ;
struct fbcon_ops {int graphics; int blank_state; int cursor_flash; struct fb_var_screeninfo var; } ;
struct fb_info {struct fb_var_screeninfo var; struct fbcon_ops* fbcon_par; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_DRAW ; 
 int /*<<< orphan*/  CM_ERASE ; 
 int FB_ACTIVATE_FORCE ; 
 int FB_ACTIVATE_NOW ; 
 int FB_BLANK_UNBLANK ; 
 size_t* con2fb_map ; 
 scalar_t__ FUNC0 (struct fb_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*,struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*,struct fb_info*,int) ; 
 scalar_t__ FUNC6 (struct vc_data*,struct fb_info*) ; 
 struct fb_info** registered_fb ; 
 int /*<<< orphan*/  FUNC7 (struct vc_data*) ; 

__attribute__((used)) static int FUNC8(struct vc_data *vc, int blank, int mode_switch)
{
	struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
	struct fbcon_ops *ops = info->fbcon_par;

	if (mode_switch) {
		struct fb_var_screeninfo var = info->var;

		ops->graphics = 1;

		if (!blank) {
			var.activate = FB_ACTIVATE_NOW | FB_ACTIVATE_FORCE;
			FUNC1(info, &var);
			ops->graphics = 0;
			ops->var = info->var;
		}
	}

 	if (!FUNC6(vc, info)) {
		if (ops->blank_state != blank) {
			ops->blank_state = blank;
			FUNC3(vc, blank ? CM_ERASE : CM_DRAW);
			ops->cursor_flash = (!blank);

			if (FUNC0(info, blank))
				FUNC5(vc, info, blank);
		}

		if (!blank)
			FUNC7(vc);
	}

	if (mode_switch || FUNC6(vc, info) ||
	    ops->blank_state != FB_BLANK_UNBLANK)
		FUNC4(info);
	else
		FUNC2(info);

	return 0;
}