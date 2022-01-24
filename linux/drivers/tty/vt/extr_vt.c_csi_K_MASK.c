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
struct vc_data {unsigned int vc_cols; unsigned int vc_x; scalar_t__ vc_need_wrap; int /*<<< orphan*/  vc_video_erase_char; scalar_t__ vc_pos; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vc_data*,int,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct vc_data *vc, int vpar)
{
	unsigned int count;
	unsigned short *start = (unsigned short *)vc->vc_pos;
	int offset;

	switch (vpar) {
		case 0:	/* erase from cursor to end of line */
			offset = 0;
			count = vc->vc_cols - vc->vc_x;
			break;
		case 1:	/* erase from start of line to cursor */
			offset = -vc->vc_x;
			count = vc->vc_x + 1;
			break;
		case 2: /* erase whole line */
			offset = -vc->vc_x;
			count = vc->vc_cols;
			break;
		default:
			return;
	}
	FUNC3(vc, vc->vc_x + offset, count);
	FUNC2(start + offset, vc->vc_video_erase_char, 2 * count);
	vc->vc_need_wrap = 0;
	if (FUNC0(vc))
		FUNC1(vc, (unsigned long)(start + offset), count);
}