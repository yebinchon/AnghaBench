#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* ci_dentry; } ;
struct TYPE_6__ {TYPE_4__ cg_item; } ;
struct configfs_subsystem {TYPE_2__ su_group; } ;
struct configfs_dirent {int /*<<< orphan*/  s_dentry; } ;
struct config_item {TYPE_3__* ci_dentry; struct config_group* ci_group; } ;
struct config_group {struct config_item cg_item; struct configfs_subsystem* cg_subsys; } ;
struct TYPE_7__ {int /*<<< orphan*/  d_fsdata; } ;
struct TYPE_5__ {struct configfs_dirent* d_fsdata; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct config_item*) ; 
 struct configfs_dirent* FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC2 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct config_item*) ; 
 struct configfs_subsystem* FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct configfs_subsystem *caller_subsys,
				  struct config_item *target)
{
	struct configfs_subsystem *target_subsys;
	struct config_group *root, *parent;
	struct configfs_dirent *subsys_sd;
	int ret = -ENOENT;

	/* Disallow this function for configfs root */
	if (FUNC2(target))
		return -EINVAL;

	parent = target->ci_group;
	/*
	 * This may happen when someone is trying to depend root
	 * directory of some subsystem
	 */
	if (FUNC2(&parent->cg_item)) {
		target_subsys = FUNC7(FUNC6(target));
		root = parent;
	} else {
		target_subsys = parent->cg_subsys;
		/* Find a cofnigfs root as we may need it for locking */
		for (root = parent; !FUNC2(&root->cg_item);
		     root = root->cg_item.ci_group)
			;
	}

	if (target_subsys != caller_subsys) {
		/*
		 * We are in other configfs subsystem, so we have to do
		 * additional locking to prevent other subsystem from being
		 * unregistered
		 */
		FUNC4(FUNC3(root->cg_item.ci_dentry));

		/*
		 * As we are trying to depend item from other subsystem
		 * we have to check if this subsystem is still registered
		 */
		subsys_sd = FUNC1(
				root->cg_item.ci_dentry->d_fsdata,
				&target_subsys->su_group.cg_item);
		if (!subsys_sd)
			goto out_root_unlock;
	} else {
		subsys_sd = target_subsys->su_group.cg_item.ci_dentry->d_fsdata;
	}

	/* Now we can execute core of depend item */
	ret = FUNC0(subsys_sd->s_dentry, target);

	if (target_subsys != caller_subsys)
out_root_unlock:
		/*
		 * We were called from subsystem other than our target so we
		 * took some locks so now it's time to release them
		 */
		FUNC5(FUNC3(root->cg_item.ci_dentry));

	return ret;
}