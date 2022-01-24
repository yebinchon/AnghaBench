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
struct i740fb_par {scalar_t__ ref_count; int /*<<< orphan*/  open_lock; } ;
struct fb_info {struct i740fb_par* par; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct fb_info*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct fb_info *info, int user)
{
	struct i740fb_par *par = info->par;

	FUNC1(&(par->open_lock));
	if (par->ref_count == 0) {
		FUNC0(info, "release called with zero refcount\n");
		FUNC2(&(par->open_lock));
		return -EINVAL;
	}

	par->ref_count--;
	FUNC2(&(par->open_lock));

	return 0;
}