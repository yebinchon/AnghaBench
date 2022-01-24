#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
typedef  int /*<<< orphan*/  u64 ;
struct inode {TYPE_1__* i_mapping; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct btrfs_trans_handle {TYPE_1__* i_mapping; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/  i_sb; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_8__ {TYPE_2__ io_tree; struct btrfs_root* root; } ;
struct TYPE_6__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  btrfs_aops ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  btrfs_extent_io_ops ; 
 int /*<<< orphan*/  btrfs_file_inode_operations ; 
 int /*<<< orphan*/  btrfs_file_operations ; 
 int FUNC5 (struct btrfs_root*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,struct inode*,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 struct inode* FUNC8 (struct inode*,struct btrfs_root*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct inode*,TYPE_3__*) ; 
 struct btrfs_fs_info* FUNC10 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC11 (struct btrfs_root*,int) ; 
 int FUNC12 (struct inode*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 

__attribute__((used)) static int FUNC18(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	struct btrfs_fs_info *fs_info = FUNC10(dir->i_sb);
	struct btrfs_trans_handle *trans;
	struct btrfs_root *root = FUNC0(dir)->root;
	struct inode *inode = NULL;
	u64 objectid;
	u64 index;
	int ret = 0;

	/*
	 * 5 units required for adding orphan entry
	 */
	trans = FUNC11(root, 5);
	if (FUNC1(trans))
		return FUNC2(trans);

	ret = FUNC5(root, &objectid);
	if (ret)
		goto out;

	inode = FUNC8(trans, root, dir, NULL, 0,
			FUNC7(FUNC0(dir)), objectid, mode, &index);
	if (FUNC1(inode)) {
		ret = FUNC2(inode);
		inode = NULL;
		goto out;
	}

	inode->i_fop = &btrfs_file_operations;
	inode->i_op = &btrfs_file_inode_operations;

	inode->i_mapping->a_ops = &btrfs_aops;
	FUNC0(inode)->io_tree.ops = &btrfs_extent_io_ops;

	ret = FUNC6(trans, inode, dir, NULL);
	if (ret)
		goto out;

	ret = FUNC12(trans, root, inode);
	if (ret)
		goto out;
	ret = FUNC9(trans, FUNC0(inode));
	if (ret)
		goto out;

	/*
	 * We set number of links to 0 in btrfs_new_inode(), and here we set
	 * it to 1 because d_tmpfile() will issue a warning if the count is 0,
	 * through:
	 *
	 *    d_tmpfile() -> inode_dec_link_count() -> drop_nlink()
	 */
	FUNC16(inode, 1);
	FUNC13(dentry, inode);
	FUNC17(inode);
	FUNC15(inode);
out:
	FUNC4(trans);
	if (ret && inode)
		FUNC14(inode);
	FUNC3(fs_info);
	return ret;
}