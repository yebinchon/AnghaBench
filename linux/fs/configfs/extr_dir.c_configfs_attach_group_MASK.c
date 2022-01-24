#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dentry {struct configfs_dirent* d_fsdata; } ;
struct configfs_fragment {int dummy; } ;
struct configfs_dirent {int /*<<< orphan*/  s_type; } ;
struct config_item {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIGFS_USET_DIR ; 
 int /*<<< orphan*/  I_MUTEX_CHILD ; 
 int /*<<< orphan*/  S_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  FUNC1 (struct configfs_dirent*) ; 
 int FUNC2 (struct config_item*,struct config_item*,struct dentry*,struct configfs_fragment*) ; 
 int /*<<< orphan*/  FUNC3 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 TYPE_1__* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct configfs_fragment*) ; 
 int /*<<< orphan*/  FUNC10 (struct config_item*) ; 

__attribute__((used)) static int FUNC11(struct config_item *parent_item,
				 struct config_item *item,
				 struct dentry *dentry,
				 struct configfs_fragment *frag)
{
	int ret;
	struct configfs_dirent *sd;

	ret = FUNC2(parent_item, item, dentry, frag);
	if (!ret) {
		sd = dentry->d_fsdata;
		sd->s_type |= CONFIGFS_USET_DIR;

		/*
		 * FYI, we're faking mkdir in populate_groups()
		 * We must lock the group's inode to avoid races with the VFS
		 * which can already hit the inode and try to add/remove entries
		 * under it.
		 *
		 * We must also lock the inode to remove it safely in case of
		 * error, as rmdir() would.
		 */
		FUNC7(FUNC5(dentry), I_MUTEX_CHILD);
		FUNC1(sd);
		ret = FUNC9(FUNC10(item), frag);
		if (ret) {
			FUNC3(item);
			FUNC5(dentry)->i_flags |= S_DEAD;
			FUNC6(dentry);
		}
		FUNC0(sd);
		FUNC8(FUNC5(dentry));
		if (ret)
			FUNC4(dentry);
	}

	return ret;
}