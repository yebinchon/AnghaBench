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
typedef  int umode_t ;
struct inode {int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_fsdata; TYPE_1__ d_name; struct dentry* d_parent; } ;
struct configfs_fragment {int dummy; } ;
struct config_item {struct dentry* ci_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CONFIGFS_DIR ; 
 int CONFIGFS_USET_CREATING ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int S_IFDIR ; 
 int S_IRUGO ; 
 int S_IRWXU ; 
 int S_IXUGO ; 
 struct inode* FUNC3 (struct dentry*,int) ; 
 int /*<<< orphan*/  configfs_dir_inode_operations ; 
 int /*<<< orphan*/  configfs_dir_operations ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct dentry*,struct config_item*,int,int,struct configfs_fragment*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct config_item *item, struct dentry *dentry,
				struct configfs_fragment *frag)
{
	int error;
	umode_t mode = S_IFDIR| S_IRWXU | S_IRUGO | S_IXUGO;
	struct dentry *p = dentry->d_parent;
	struct inode *inode;

	FUNC0(!item);

	error = FUNC4(p->d_fsdata, dentry->d_name.name);
	if (FUNC12(error))
		return error;

	error = FUNC5(p->d_fsdata, dentry, item, mode,
				     CONFIGFS_DIR | CONFIGFS_USET_CREATING,
				     frag);
	if (FUNC12(error))
		return error;

	FUNC7(p->d_fsdata, dentry->d_fsdata);
	inode = FUNC3(dentry, mode);
	if (FUNC1(inode))
		goto out_remove;

	inode->i_op = &configfs_dir_inode_operations;
	inode->i_fop = &configfs_dir_operations;
	/* directory inodes start off with i_nlink == 2 (for "." entry) */
	FUNC11(inode);
	FUNC9(dentry, inode);
	/* already hashed */
	FUNC10(dentry);  /* pin directory dentries in core */
	FUNC11(FUNC8(p));
	item->ci_dentry = dentry;
	return 0;

out_remove:
	FUNC6(dentry);
	return FUNC2(inode);
}