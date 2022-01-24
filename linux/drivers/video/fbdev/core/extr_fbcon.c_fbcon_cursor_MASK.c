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
typedef  int /*<<< orphan*/  u16 ;
struct vc_data {size_t vc_num; int vc_deccm; int vc_cursor_type; int /*<<< orphan*/  vc_cur_blink_ms; scalar_t__ vc_pos; } ;
struct fbcon_ops {int cursor_flash; int /*<<< orphan*/  (* cursor ) (struct vc_data*,struct fb_info*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  cur_blink_jiffies; } ;
struct fb_info {struct fbcon_ops* fbcon_par; } ;

/* Variables and functions */
 int CM_ERASE ; 
 int CM_SOFTBACK ; 
 size_t* con2fb_map ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 scalar_t__ FUNC2 (struct vc_data*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*,struct fb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct fb_info** registered_fb ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int softback_lines ; 
 int /*<<< orphan*/  FUNC7 (struct vc_data*,struct fb_info*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct vc_data *vc, int mode)
{
	struct fb_info *info = registered_fb[con2fb_map[vc->vc_num]];
	struct fbcon_ops *ops = info->fbcon_par;
	int y;
 	int c = FUNC6((u16 *) vc->vc_pos);

	ops->cur_blink_jiffies = FUNC5(vc->vc_cur_blink_ms);

	if (FUNC2(vc, info) || vc->vc_deccm != 1)
		return;

	if (vc->vc_cursor_type & 0x10)
		FUNC1(info);
	else
		FUNC0(info);

	ops->cursor_flash = (mode == CM_ERASE) ? 0 : 1;
	if (mode & CM_SOFTBACK) {
		mode &= ~CM_SOFTBACK;
		y = softback_lines;
	} else {
		if (softback_lines)
			FUNC3(vc);
		y = 0;
	}

	ops->cursor(vc, info, mode, y, FUNC4(vc, info, c, 1),
		    FUNC4(vc, info, c, 0));
}