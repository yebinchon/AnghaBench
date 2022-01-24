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
typedef  int u_int ;
struct vc_data {size_t vc_num; int vc_top; } ;
struct fbcon_ops {int /*<<< orphan*/  (* clear ) (struct vc_data*,struct fb_info*,int /*<<< orphan*/ ,int,int,int) ;} ;
struct fbcon_display {int vrows; int yscroll; } ;
struct fb_info {struct fbcon_ops* fbcon_par; } ;

/* Variables and functions */
 size_t* con2fb_map ; 
 struct fbcon_display* fb_display ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vc_data*,struct fb_info*) ; 
 int logo_lines ; 
 int /*<<< orphan*/  FUNC2 (struct fbcon_display*,int) ; 
 struct fb_info** registered_fb ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*,struct fb_info*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*,struct fb_info*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*,struct fb_info*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC6(struct vc_data *vc, int sy, int sx, int height,
			int width)
{
	struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
	struct fbcon_ops *ops = info->fbcon_par;

	struct fbcon_display *p = &fb_display[vc->vc_num];
	u_int y_break;

	if (FUNC1(vc, info))
		return;

	if (!height || !width)
		return;

	if (sy < vc->vc_top && vc->vc_top == logo_lines) {
		vc->vc_top = 0;
		/*
		 * If the font dimensions are not an integral of the display
		 * dimensions then the ops->clear below won't end up clearing
		 * the margins.  Call clear_margins here in case the logo
		 * bitmap stretched into the margin area.
		 */
		FUNC0(vc, 0);
	}

	/* Split blits that cross physical y_wrap boundary */

	y_break = p->vrows - p->yscroll;
	if (sy < y_break && sy + height - 1 >= y_break) {
		u_int b = y_break - sy;
		ops->clear(vc, info, FUNC2(p, sy), sx, b, width);
		ops->clear(vc, info, FUNC2(p, sy + b), sx, height - b,
				 width);
	} else
		ops->clear(vc, info, FUNC2(p, sy), sx, height, width);
}