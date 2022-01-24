#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  commit_root; int /*<<< orphan*/  node; int /*<<< orphan*/  dirty_list; int /*<<< orphan*/  root_key; } ;
struct btrfs_fs_info {int /*<<< orphan*/  qgroup_ioctl_lock; int /*<<< orphan*/  qgroup_lock; int /*<<< orphan*/  qgroup_flags; struct btrfs_root* quota_root; int /*<<< orphan*/  flags; int /*<<< orphan*/  tree_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_QUOTA_ENABLED ; 
 int /*<<< orphan*/  BTRFS_QGROUP_STATUS_FLAG_ON ; 
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_trans_handle*,int) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct btrfs_trans_handle*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_fs_info*,int) ; 
 struct btrfs_trans_handle* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

int FUNC21(struct btrfs_fs_info *fs_info)
{
	struct btrfs_root *quota_root;
	struct btrfs_trans_handle *trans = NULL;
	int ret = 0;

	FUNC17(&fs_info->qgroup_ioctl_lock);
	if (!fs_info->quota_root)
		goto out;

	/*
	 * 1 For the root item
	 *
	 * We should also reserve enough items for the quota tree deletion in
	 * btrfs_clean_quota_tree but this is not done.
	 */
	trans = FUNC10(fs_info->tree_root, 1);
	if (FUNC0(trans)) {
		ret = FUNC1(trans);
		goto out;
	}

	FUNC13(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags);
	FUNC9(fs_info, false);
	FUNC19(&fs_info->qgroup_lock);
	quota_root = fs_info->quota_root;
	fs_info->quota_root = NULL;
	fs_info->qgroup_flags &= ~BTRFS_QGROUP_STATUS_FLAG_ON;
	FUNC20(&fs_info->qgroup_lock);

	FUNC7(fs_info);

	ret = FUNC3(trans, quota_root);
	if (ret) {
		FUNC2(trans, ret);
		goto end_trans;
	}

	ret = FUNC5(trans, &quota_root->root_key);
	if (ret) {
		FUNC2(trans, ret);
		goto end_trans;
	}

	FUNC16(&quota_root->dirty_list);

	FUNC11(quota_root->node);
	FUNC4(quota_root->node);
	FUNC12(quota_root->node);
	FUNC8(trans, quota_root, quota_root->node, 0, 1);

	FUNC14(quota_root->node);
	FUNC14(quota_root->commit_root);
	FUNC15(quota_root);

end_trans:
	ret = FUNC6(trans);
out:
	FUNC18(&fs_info->qgroup_ioctl_lock);
	return ret;
}