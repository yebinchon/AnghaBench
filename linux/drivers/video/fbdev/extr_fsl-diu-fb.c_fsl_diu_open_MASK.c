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
struct mfb_info {scalar_t__ index; int count; int /*<<< orphan*/  parent; } ;
struct fb_info {int /*<<< orphan*/  var; struct mfb_info* par; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* release_bootmem ) () ;} ;

/* Variables and functions */
 scalar_t__ PLANE0 ; 
 int /*<<< orphan*/  diu_lock ; 
 TYPE_1__ diu_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct fb_info *info, int user)
{
	struct mfb_info *mfbi = info->par;
	int res = 0;

	/* free boot splash memory on first /dev/fb0 open */
	if ((mfbi->index == PLANE0) && diu_ops.release_bootmem)
		diu_ops.release_bootmem();

	FUNC4(&diu_lock);
	mfbi->count++;
	if (mfbi->count == 1) {
		FUNC0(&info->var, info);
		res = FUNC3(info);
		if (res < 0)
			mfbi->count--;
		else {
			FUNC1(mfbi->parent);
			FUNC2(info);
		}
	}

	FUNC5(&diu_lock);
	return res;
}