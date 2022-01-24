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
struct configfs_subsystem {int /*<<< orphan*/  su_mutex; } ;
struct configfs_fragment {int dummy; } ;
struct TYPE_2__ {struct dentry* ci_dentry; } ;
struct config_group {TYPE_1__ cg_item; struct configfs_subsystem* cg_subsys; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int FUNC1 (struct config_group*,struct config_group*,struct configfs_fragment*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct config_group*,struct config_group*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct configfs_fragment* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct configfs_fragment*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct config_group*) ; 

int FUNC13(struct config_group *parent_group,
			    struct config_group *group)
{
	struct configfs_subsystem *subsys = parent_group->cg_subsys;
	struct dentry *parent;
	struct configfs_fragment *frag;
	int ret;

	frag = FUNC8();
	if (!frag)
		return -ENOMEM;

	FUNC6(&subsys->su_mutex);
	FUNC5(parent_group, group);
	FUNC7(&subsys->su_mutex);

	parent = parent_group->cg_item.ci_dentry;

	FUNC3(FUNC2(parent), I_MUTEX_PARENT);
	ret = FUNC1(parent_group, group, frag);
	if (ret)
		goto err_out;

	FUNC10(&configfs_dirent_lock);
	FUNC0(group->cg_item.ci_dentry->d_fsdata);
	FUNC11(&configfs_dirent_lock);
	FUNC4(FUNC2(parent));
	FUNC9(frag);
	return 0;
err_out:
	FUNC4(FUNC2(parent));
	FUNC6(&subsys->su_mutex);
	FUNC12(group);
	FUNC7(&subsys->su_mutex);
	FUNC9(frag);
	return ret;
}