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
typedef  int /*<<< orphan*/  u8 ;
struct uvesafb_par {int /*<<< orphan*/  ref_count; int /*<<< orphan*/ * vbe_state_orig; scalar_t__ vbe_state_size; } ;
struct fb_info {struct uvesafb_par* par; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct uvesafb_par*) ; 

__attribute__((used)) static int FUNC6(struct fb_info *info, int user)
{
	struct uvesafb_par *par = info->par;
	int cnt = FUNC3(&par->ref_count);
	u8 *buf = NULL;

	if (!cnt && par->vbe_state_size) {
		buf =  FUNC5(par);
		if (FUNC0(buf)) {
			FUNC4("save hardware state failed, error code is %ld!\n",
				FUNC1(buf));
		} else {
			par->vbe_state_orig = buf;
		}
	}

	FUNC2(&par->ref_count);
	return 0;
}