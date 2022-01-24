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
struct dentry {int dummy; } ;
struct configfs_dirent {int s_dependent_count; } ;
struct config_item {TYPE_1__* ci_dentry; } ;
struct TYPE_2__ {struct configfs_dirent* d_fsdata; } ;

/* Variables and functions */
 int FUNC0 (struct dentry*,struct config_item*) ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dentry *subsys_dentry,
				   struct config_item *target)
{
	struct configfs_dirent *p;
	int ret;

	FUNC1(&configfs_dirent_lock);
	/* Scan the tree, return 0 if found */
	ret = FUNC0(subsys_dentry, target);
	if (ret)
		goto out_unlock_dirent_lock;

	/*
	 * We are sure that the item is not about to be removed by rmdir(), and
	 * not in the middle of attachment by mkdir().
	 */
	p = target->ci_dentry->d_fsdata;
	p->s_dependent_count += 1;

out_unlock_dirent_lock:
	FUNC2(&configfs_dirent_lock);

	return ret;
}