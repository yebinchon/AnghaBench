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
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;
struct vc_data {size_t vc_num; scalar_t__ vc_screenbuf; scalar_t__ vc_hi_font_mask; TYPE_1__ vc_font; } ;
struct fbcon_ops {int /*<<< orphan*/  flags; } ;
struct fbcon_display {int dummy; } ;
struct fb_info {int flags; struct fbcon_ops* fbcon_par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBCON_FLAGS_INIT ; 
 int FBINFO_MISC_FIRMWARE ; 
 int* con2fb_map ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct vc_data*) ; 
 int /*<<< orphan*/  fb_con ; 
 struct fbcon_display* fb_display ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct fbcon_display*,int) ; 
 struct fb_info** registered_fb ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*,int) ; 

__attribute__((used)) static void FUNC6(struct vc_data *vc)
{
	struct fbcon_display *p = &fb_display[vc->vc_num];
	struct fb_info *info;
	struct fbcon_ops *ops;
	int idx;
	bool free_font = true;

	idx = con2fb_map[vc->vc_num];

	if (idx == -1)
		goto finished;

	info = registered_fb[idx];

	if (!info)
		goto finished;

	if (info->flags & FBINFO_MISC_FIRMWARE)
		free_font = false;
	ops = info->fbcon_par;

	if (!ops)
		goto finished;

	if (FUNC1(vc))
		FUNC2(info);

	ops->flags &= ~FBCON_FLAGS_INIT;
finished:

	FUNC4(p, free_font);
	if (free_font)
		vc->vc_font.data = NULL;

	if (vc->vc_hi_font_mask && vc->vc_screenbuf)
		FUNC5(vc, false);

	if (!FUNC0(&fb_con))
		FUNC3();

	return;
}