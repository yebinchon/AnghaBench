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
 int /*<<< orphan*/  FUNC2 (unsigned short*,unsigned short*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned short*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct vc_data*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct vc_data *vc, unsigned int nr)
{
	unsigned short *p = (unsigned short *) vc->vc_pos;

	FUNC4(vc, nr);
	FUNC2(p + nr, p, (vc->vc_cols - vc->vc_x - nr) * 2);
	FUNC3(p, vc->vc_video_erase_char, nr * 2);
	vc->vc_need_wrap = 0;
	if (FUNC0(vc))
		FUNC1(vc, (unsigned long) p,
			vc->vc_cols - vc->vc_x);
}