#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct inode {int i_nlink; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_sb; } ;
struct dentry {struct dentry* d_parent; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_8__ {scalar_t__ objectid; } ;
struct btrfs_root {TYPE_1__ root_key; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_9__ {unsigned long long dir_index; int /*<<< orphan*/  runtime_flags; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_COPY_EVERYTHING ; 
 int BTRFS_LINK_MAX ; 
 int BTRFS_NEED_TRANS_COMMIT ; 
 int EMLINK ; 
 int EXDEV ; 
 scalar_t__ FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 int FUNC3 (struct btrfs_trans_handle*,TYPE_2__*,struct dentry*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*) ; 
 int FUNC5 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_trans_handle*) ; 
 int FUNC7 (struct btrfs_trans_handle*,TYPE_2__*,int /*<<< orphan*/ *,struct dentry*,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct btrfs_trans_handle*,TYPE_2__*) ; 
 struct btrfs_fs_info* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct btrfs_trans_handle* FUNC11 (struct btrfs_root*,int) ; 
 int FUNC12 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 struct inode* FUNC14 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct dentry *old_dentry, struct inode *dir,
		      struct dentry *dentry)
{
	struct btrfs_trans_handle *trans = NULL;
	struct btrfs_root *root = FUNC0(dir)->root;
	struct inode *inode = FUNC14(old_dentry);
	struct btrfs_fs_info *fs_info = FUNC9(inode->i_sb);
	u64 index;
	int err;
	int drop_inode = 0;

	/* do not allow sys_link's with other subvols of the same device */
	if (root->root_key.objectid != FUNC0(inode)->root->root_key.objectid)
		return -EXDEV;

	if (inode->i_nlink >= BTRFS_LINK_MAX)
		return -EMLINK;

	err = FUNC10(FUNC0(dir), &index);
	if (err)
		goto fail;

	/*
	 * 2 items for inode and inode ref
	 * 2 items for dir items
	 * 1 item for parent inode
	 * 1 item for orphan item deletion if O_TMPFILE
	 */
	trans = FUNC11(root, inode->i_nlink ? 5 : 6);
	if (FUNC1(trans)) {
		err = FUNC2(trans);
		trans = NULL;
		goto fail;
	}

	/* There are several dir indexes for this inode, clear the cache. */
	FUNC0(inode)->dir_index = 0ULL;
	FUNC17(inode);
	FUNC19(inode);
	inode->i_ctime = FUNC13(inode);
	FUNC16(inode);
	FUNC21(BTRFS_INODE_COPY_EVERYTHING, &FUNC0(inode)->runtime_flags);

	err = FUNC3(trans, FUNC0(dir), dentry, FUNC0(inode),
			1, index);

	if (err) {
		drop_inode = 1;
	} else {
		struct dentry *parent = dentry->d_parent;
		int ret;

		err = FUNC12(trans, root, inode);
		if (err)
			goto fail;
		if (inode->i_nlink == 1) {
			/*
			 * If new hard link count is 1, it's a file created
			 * with open(2) O_TMPFILE flag.
			 */
			err = FUNC8(trans, FUNC0(inode));
			if (err)
				goto fail;
		}
		FUNC15(dentry, inode);
		ret = FUNC7(trans, FUNC0(inode), NULL, parent,
					 true, NULL);
		if (ret == BTRFS_NEED_TRANS_COMMIT) {
			err = FUNC5(trans);
			trans = NULL;
		}
	}

fail:
	if (trans)
		FUNC6(trans);
	if (drop_inode) {
		FUNC18(inode);
		FUNC20(inode);
	}
	FUNC4(fs_info);
	return err;
}