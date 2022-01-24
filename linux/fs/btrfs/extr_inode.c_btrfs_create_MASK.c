#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
typedef  int /*<<< orphan*/  u64 ;
struct inode {TYPE_1__* i_mapping; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/  i_sb; } ;
struct TYPE_11__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_4__ d_name; } ;
struct btrfs_trans_handle {TYPE_1__* i_mapping; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/  i_sb; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_10__ {TYPE_2__ io_tree; struct btrfs_root* root; } ;
struct TYPE_8__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,TYPE_3__*,struct dentry*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btrfs_aops ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  btrfs_extent_io_ops ; 
 int /*<<< orphan*/  btrfs_file_inode_operations ; 
 int /*<<< orphan*/  btrfs_file_operations ; 
 int FUNC6 (struct btrfs_root*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode*,struct inode*,struct inode*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 struct inode* FUNC9 (struct inode*,struct btrfs_root*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct btrfs_fs_info* FUNC10 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC11 (struct btrfs_root*,int) ; 
 int FUNC12 (struct inode*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 

__attribute__((used)) static int FUNC16(struct inode *dir, struct dentry *dentry,
			umode_t mode, bool excl)
{
	struct btrfs_fs_info *fs_info = FUNC10(dir->i_sb);
	struct btrfs_trans_handle *trans;
	struct btrfs_root *root = FUNC0(dir)->root;
	struct inode *inode = NULL;
	int err;
	u64 objectid;
	u64 index = 0;

	/*
	 * 2 for inode item and ref
	 * 2 for dir items
	 * 1 for xattr if selinux is on
	 */
	trans = FUNC11(root, 5);
	if (FUNC1(trans))
		return FUNC2(trans);

	err = FUNC6(root, &objectid);
	if (err)
		goto out_unlock;

	inode = FUNC9(trans, root, dir, dentry->d_name.name,
			dentry->d_name.len, FUNC8(FUNC0(dir)), objectid,
			mode, &index);
	if (FUNC1(inode)) {
		err = FUNC2(inode);
		inode = NULL;
		goto out_unlock;
	}
	/*
	* If the active LSM wants to access the inode during
	* d_instantiate it needs these. Smack checks to see
	* if the filesystem supports xattrs by looking at the
	* ops vector.
	*/
	inode->i_fop = &btrfs_file_operations;
	inode->i_op = &btrfs_file_inode_operations;
	inode->i_mapping->a_ops = &btrfs_aops;

	err = FUNC7(trans, inode, dir, &dentry->d_name);
	if (err)
		goto out_unlock;

	err = FUNC12(trans, root, inode);
	if (err)
		goto out_unlock;

	err = FUNC3(trans, FUNC0(dir), dentry, FUNC0(inode),
			0, index);
	if (err)
		goto out_unlock;

	FUNC0(inode)->io_tree.ops = &btrfs_extent_io_ops;
	FUNC13(dentry, inode);

out_unlock:
	FUNC5(trans);
	if (err && inode) {
		FUNC15(inode);
		FUNC14(inode);
	}
	FUNC4(fs_info);
	return err;
}