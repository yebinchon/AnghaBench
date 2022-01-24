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
struct dentry {int /*<<< orphan*/  d_fsdata; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {struct config_item cg_item; } ;
struct configfs_subsystem {TYPE_1__ su_group; } ;
struct configfs_dirent {int /*<<< orphan*/  s_dentry; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct config_item*) ; 
 struct configfs_dirent* FUNC3 (int /*<<< orphan*/ ,struct config_item*) ; 
 struct dentry* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct configfs_subsystem *subsys,
			 struct config_item *target)
{
	int ret;
	struct configfs_dirent *subsys_sd;
	struct config_item *s_item = &subsys->su_group.cg_item;
	struct dentry *root;

	/*
	 * Pin the configfs filesystem.  This means we can safely access
	 * the root of the configfs filesystem.
	 */
	root = FUNC4();
	if (FUNC0(root))
		return FUNC1(root);

	/*
	 * Next, lock the root directory.  We're going to check that the
	 * subsystem is really registered, and so we need to lock out
	 * configfs_[un]register_subsystem().
	 */
	FUNC7(FUNC6(root));

	subsys_sd = FUNC3(root->d_fsdata, s_item);
	if (!subsys_sd) {
		ret = -ENOENT;
		goto out_unlock_fs;
	}

	/* Ok, now we can trust subsys/s_item */
	ret = FUNC2(subsys_sd->s_dentry, target);

out_unlock_fs:
	FUNC8(FUNC6(root));

	/*
	 * If we succeeded, the fs is pinned via other methods.  If not,
	 * we're done with it anyway.  So release_fs() is always right.
	 */
	FUNC5();

	return ret;
}