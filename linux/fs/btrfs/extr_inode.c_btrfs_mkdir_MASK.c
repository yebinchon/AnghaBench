#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
typedef  int /*<<< orphan*/  u64 ;
struct inode {int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_sb; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct btrfs_trans_handle {int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_sb; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_7__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int S_IFDIR ; 
 int FUNC3 (struct inode*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  btrfs_dir_file_operations ; 
 int /*<<< orphan*/  btrfs_dir_inode_operations ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct btrfs_root*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,struct inode*,struct inode*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 struct inode* FUNC10 (struct inode*,struct btrfs_root*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct btrfs_fs_info* FUNC11 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC12 (struct btrfs_root*,int) ; 
 int FUNC13 (struct inode*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 

__attribute__((used)) static int FUNC17(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	struct btrfs_fs_info *fs_info = FUNC11(dir->i_sb);
	struct inode *inode = NULL;
	struct btrfs_trans_handle *trans;
	struct btrfs_root *root = FUNC0(dir)->root;
	int err = 0;
	u64 objectid = 0;
	u64 index = 0;

	/*
	 * 2 items for inode and ref
	 * 2 items for dir items
	 * 1 for xattr if selinux is on
	 */
	trans = FUNC12(root, 5);
	if (FUNC1(trans))
		return FUNC2(trans);

	err = FUNC6(root, &objectid);
	if (err)
		goto out_fail;

	inode = FUNC10(trans, root, dir, dentry->d_name.name,
			dentry->d_name.len, FUNC9(FUNC0(dir)), objectid,
			S_IFDIR | mode, &index);
	if (FUNC1(inode)) {
		err = FUNC2(inode);
		inode = NULL;
		goto out_fail;
	}

	/* these must be set before we unlock the inode */
	inode->i_op = &btrfs_dir_inode_operations;
	inode->i_fop = &btrfs_dir_file_operations;

	err = FUNC8(trans, inode, dir, &dentry->d_name);
	if (err)
		goto out_fail;

	FUNC7(FUNC0(inode), 0);
	err = FUNC13(trans, root, inode);
	if (err)
		goto out_fail;

	err = FUNC3(trans, FUNC0(dir), FUNC0(inode),
			dentry->d_name.name,
			dentry->d_name.len, 0, index);
	if (err)
		goto out_fail;

	FUNC14(dentry, inode);

out_fail:
	FUNC5(trans);
	if (err && inode) {
		FUNC16(inode);
		FUNC15(inode);
	}
	FUNC4(fs_info);
	return err;
}