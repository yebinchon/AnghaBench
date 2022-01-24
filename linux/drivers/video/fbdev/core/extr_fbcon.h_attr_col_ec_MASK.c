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
struct vc_data {int /*<<< orphan*/  vc_video_erase_char; scalar_t__ vc_can_do_color; } ;
struct TYPE_2__ {scalar_t__ visual; } ;
struct fb_info {TYPE_1__ fix; } ;

/* Variables and functions */
 scalar_t__ FB_VISUAL_MONO01 ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fb_info*) ; 

__attribute__((used)) static inline int FUNC4(int shift, struct vc_data *vc,
			      struct fb_info *info, int is_fg)
{
	int is_mono01;
	int col;
	int fg;
	int bg;

	if (!vc)
		return 0;

	if (vc->vc_can_do_color)
		return is_fg ? FUNC1(shift,vc->vc_video_erase_char)
			: FUNC0(shift,vc->vc_video_erase_char);

	if (!info)
		return 0;

	col = FUNC3(info);
	is_mono01 = info->fix.visual == FB_VISUAL_MONO01;

	if (FUNC2(vc->vc_video_erase_char)) {
		fg = is_mono01 ? col : 0;
		bg = is_mono01 ? 0 : col;
	}
	else {
		fg = is_mono01 ? 0 : col;
		bg = is_mono01 ? col : 0;
	}

	return is_fg ? fg : bg;
}