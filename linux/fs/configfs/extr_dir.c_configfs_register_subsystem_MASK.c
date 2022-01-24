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
struct dentry {struct configfs_dirent* d_fsdata; } ;
struct TYPE_2__ {scalar_t__ ci_name; scalar_t__ ci_namebuf; } ;
struct config_group {TYPE_1__ cg_item; } ;
struct configfs_subsystem {struct config_group su_group; } ;
struct configfs_fragment {int dummy; } ;
struct configfs_dirent {int /*<<< orphan*/  s_element; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int FUNC2 (struct dentry*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,struct dentry*,struct configfs_fragment*) ; 
 int /*<<< orphan*/  FUNC4 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 struct dentry* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC8 (struct dentry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct config_group*) ; 
 struct configfs_fragment* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct configfs_fragment*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct config_group*) ; 

int FUNC21(struct configfs_subsystem *subsys)
{
	int err;
	struct config_group *group = &subsys->su_group;
	struct dentry *dentry;
	struct dentry *root;
	struct configfs_dirent *sd;
	struct configfs_fragment *frag;

	frag = FUNC15();
	if (!frag)
		return -ENOMEM;

	root = FUNC5();
	if (FUNC1(root)) {
		FUNC16(frag);
		return FUNC2(root);
	}

	if (!group->cg_item.ci_name)
		group->cg_item.ci_name = group->cg_item.ci_namebuf;

	sd = root->d_fsdata;
	FUNC14(FUNC19(sd->s_element), group);

	FUNC12(FUNC10(root), I_MUTEX_PARENT);

	err = -ENOMEM;
	dentry = FUNC8(root, group->cg_item.ci_name);
	if (dentry) {
		FUNC7(dentry, NULL);

		err = FUNC3(sd->s_element, &group->cg_item,
					    dentry, frag);
		if (err) {
			FUNC0(FUNC10(dentry));
			FUNC9(dentry);
			FUNC11(dentry);
		} else {
			FUNC17(&configfs_dirent_lock);
			FUNC4(dentry->d_fsdata);
			FUNC18(&configfs_dirent_lock);
		}
	}

	FUNC13(FUNC10(root));

	if (err) {
		FUNC20(group);
		FUNC6();
	}
	FUNC16(frag);

	return err;
}