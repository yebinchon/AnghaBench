#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct path {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {scalar_t__ d_inode; int /*<<< orphan*/  d_sb; TYPE_2__* d_parent; } ;
struct configfs_dirent {int dummy; } ;
struct config_item_type {TYPE_1__* ct_item_ops; } ;
struct config_item {struct config_item_type* ci_type; } ;
struct TYPE_4__ {struct configfs_dirent* d_fsdata; } ;
struct TYPE_3__ {int (* allow_link ) (struct config_item*,struct config_item*) ;int /*<<< orphan*/  (* drop_link ) (struct config_item*,struct config_item*) ;} ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 int EPERM ; 
 int MAY_EXEC ; 
 int MAY_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct configfs_dirent*) ; 
 struct config_item* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  configfs_symlink_mutex ; 
 int FUNC3 (struct config_item*,struct config_item*,struct dentry*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int FUNC5 (char const*,struct path*,struct config_item**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct path*) ; 
 int FUNC12 (struct config_item*,struct config_item*) ; 
 int /*<<< orphan*/  FUNC13 (struct config_item*,struct config_item*) ; 

int FUNC14(struct inode *dir, struct dentry *dentry, const char *symname)
{
	int ret;
	struct path path;
	struct configfs_dirent *sd;
	struct config_item *parent_item;
	struct config_item *target_item = NULL;
	const struct config_item_type *type;

	sd = dentry->d_parent->d_fsdata;
	/*
	 * Fake invisibility if dir belongs to a group/default groups hierarchy
	 * being attached
	 */
	if (!FUNC1(sd))
		return -ENOENT;

	parent_item = FUNC2(dentry->d_parent);
	type = parent_item->ci_type;

	ret = -EPERM;
	if (!type || !type->ct_item_ops ||
	    !type->ct_item_ops->allow_link)
		goto out_put;

	/*
	 * This is really sick.  What they wanted was a hybrid of
	 * link(2) and symlink(2) - they wanted the target resolved
	 * at syscall time (as link(2) would've done), be a directory
	 * (which link(2) would've refused to do) *AND* be a deep
	 * fucking magic, making the target busy from rmdir POV.
	 * symlink(2) is nothing of that sort, and the locking it
	 * gets matches the normal symlink(2) semantics.  Without
	 * attempts to resolve the target (which might very well
	 * not even exist yet) done prior to locking the parent
	 * directory.  This perversion, OTOH, needs to resolve
	 * the target, which would lead to obvious deadlocks if
	 * attempted with any directories locked.
	 *
	 * Unfortunately, that garbage is userland ABI and we should've
	 * said "no" back in 2005.  Too late now, so we get to
	 * play very ugly games with locking.
	 *
	 * Try *ANYTHING* of that sort in new code, and you will
	 * really regret it.  Just ask yourself - what could a BOFH
	 * do to me and do I want to find it out first-hand?
	 *
	 *  AV, a thoroughly annoyed bastard.
	 */
	FUNC8(dir);
	ret = FUNC5(symname, &path, &target_item, dentry->d_sb);
	FUNC6(dir);
	if (ret)
		goto out_put;

	if (dentry->d_inode || FUNC4(dentry))
		ret = -EEXIST;
	else
		ret = FUNC7(dir, MAY_WRITE | MAY_EXEC);
	if (!ret)
		ret = type->ct_item_ops->allow_link(parent_item, target_item);
	if (!ret) {
		FUNC9(&configfs_symlink_mutex);
		ret = FUNC3(parent_item, target_item, dentry);
		FUNC10(&configfs_symlink_mutex);
		if (ret && type->ct_item_ops->drop_link)
			type->ct_item_ops->drop_link(parent_item,
						     target_item);
	}

	FUNC0(target_item);
	FUNC11(&path);

out_put:
	FUNC0(parent_item);
	return ret;
}