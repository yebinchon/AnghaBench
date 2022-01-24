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
struct vc_data {unsigned int vc_x; unsigned int vc_cols; unsigned int vc_y; unsigned int vc_rows; int vc_scr_end; int vc_pos; int vc_origin; scalar_t__ vc_need_wrap; int /*<<< orphan*/  vc_video_erase_char; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct vc_data*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct vc_data *vc, int vpar)
{
	unsigned int count;
	unsigned short * start;

	switch (vpar) {
		case 0:	/* erase from cursor to end of display */
			FUNC4(vc, vc->vc_x,
					     vc->vc_cols - vc->vc_x);
			FUNC5(vc, vc->vc_y + 1,
					      vc->vc_rows - vc->vc_y - 1);
			count = (vc->vc_scr_end - vc->vc_pos) >> 1;
			start = (unsigned short *)vc->vc_pos;
			break;
		case 1:	/* erase from start to cursor */
			FUNC4(vc, 0, vc->vc_x + 1);
			FUNC5(vc, 0, vc->vc_y);
			count = ((vc->vc_pos - vc->vc_origin) >> 1) + 1;
			start = (unsigned short *)vc->vc_origin;
			break;
		case 3: /* include scrollback */
			FUNC2(vc);
			/* fallthrough */
		case 2: /* erase whole display */
			FUNC5(vc, 0, vc->vc_rows);
			count = vc->vc_cols * vc->vc_rows;
			start = (unsigned short *)vc->vc_origin;
			break;
		default:
			return;
	}
	FUNC3(start, vc->vc_video_erase_char, 2 * count);
	if (FUNC0(vc))
		FUNC1(vc, (unsigned long) start, count);
	vc->vc_need_wrap = 0;
}