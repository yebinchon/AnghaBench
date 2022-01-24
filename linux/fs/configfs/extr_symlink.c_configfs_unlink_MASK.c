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
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_parent; struct configfs_dirent* d_fsdata; } ;
struct configfs_dirent {int s_type; int /*<<< orphan*/  s_links; struct configfs_dirent* s_element; int /*<<< orphan*/  s_sibling; } ;
struct config_item_type {TYPE_1__* ct_item_ops; } ;
struct config_item {struct config_item_type* ci_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* drop_link ) (struct config_item*,struct configfs_dirent*) ;} ;

/* Variables and functions */
 int CONFIGFS_ITEM_LINK ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct config_item*) ; 
 int /*<<< orphan*/  configfs_dirent_lock ; 
 int /*<<< orphan*/  FUNC1 (struct configfs_dirent*,int /*<<< orphan*/ ) ; 
 struct config_item* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct configfs_dirent*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct config_item*,struct configfs_dirent*) ; 

int FUNC9(struct inode *dir, struct dentry *dentry)
{
	struct configfs_dirent *sd = dentry->d_fsdata, *target_sd;
	struct config_item *parent_item;
	const struct config_item_type *type;
	int ret;

	ret = -EPERM;  /* What lack-of-symlink returns */
	if (!(sd->s_type & CONFIGFS_ITEM_LINK))
		goto out;

	target_sd = sd->s_element;

	parent_item = FUNC2(dentry->d_parent);
	type = parent_item->ci_type;

	FUNC6(&configfs_dirent_lock);
	FUNC5(&sd->s_sibling);
	FUNC7(&configfs_dirent_lock);
	FUNC1(sd, dentry->d_parent);
	FUNC4(dentry);
	FUNC3(sd);

	/*
	 * drop_link() must be called before
	 * decrementing target's ->s_links, so that the order of
	 * drop_link(this, target) and drop_item(target) is preserved.
	 */
	if (type && type->ct_item_ops &&
	    type->ct_item_ops->drop_link)
		type->ct_item_ops->drop_link(parent_item,
					       target_sd->s_element);

	FUNC6(&configfs_dirent_lock);
	target_sd->s_links--;
	FUNC7(&configfs_dirent_lock);
	FUNC3(target_sd);

	FUNC0(parent_item);

	ret = 0;

out:
	return ret;
}