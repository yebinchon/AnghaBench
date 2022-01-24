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
struct vt8623fb_info {int ref_count; int /*<<< orphan*/  open_lock; int /*<<< orphan*/  state; } ;
struct fb_info {struct vt8623fb_info* par; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct fb_info *info, int user)
{
	struct vt8623fb_info *par = info->par;

	FUNC0(&(par->open_lock));
	if (par->ref_count == 0) {
		FUNC1(&(par->open_lock));
		return -EINVAL;
	}

	if (par->ref_count == 1)
		FUNC2(&(par->state));

	par->ref_count--;
	FUNC1(&(par->open_lock));

	return 0;
}