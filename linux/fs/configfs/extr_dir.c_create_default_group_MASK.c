#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_fragment {int dummy; } ;
struct configfs_dirent {int /*<<< orphan*/  s_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  ci_name; int /*<<< orphan*/  ci_namebuf; struct dentry* ci_dentry; } ;
struct config_group {TYPE_1__ cg_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIGFS_USET_DEFAULT ; 
 int ENOMEM ; 
 int FUNC1 (TYPE_1__*,TYPE_1__*,struct dentry*,struct configfs_fragment*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC3 (struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 

__attribute__((used)) static int FUNC7(struct config_group *parent_group,
				struct config_group *group,
				struct configfs_fragment *frag)
{
	int ret;
	struct configfs_dirent *sd;
	/* We trust the caller holds a reference to parent */
	struct dentry *child, *parent = parent_group->cg_item.ci_dentry;

	if (!group->cg_item.ci_name)
		group->cg_item.ci_name = group->cg_item.ci_namebuf;

	ret = -ENOMEM;
	child = FUNC3(parent, group->cg_item.ci_name);
	if (child) {
		FUNC2(child, NULL);

		ret = FUNC1(&parent_group->cg_item,
					    &group->cg_item, child, frag);
		if (!ret) {
			sd = child->d_fsdata;
			sd->s_type |= CONFIGFS_USET_DEFAULT;
		} else {
			FUNC0(FUNC5(child));
			FUNC4(child);
			FUNC6(child);
		}
	}

	return ret;
}