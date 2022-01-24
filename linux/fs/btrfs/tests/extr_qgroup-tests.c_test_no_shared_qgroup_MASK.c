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
typedef  int /*<<< orphan*/  u32 ;
struct ulist {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_TREE_OBJECTID ; 
 int EINVAL ; 
 int FUNC0 (struct btrfs_trans_handle*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ulist**,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_trans_handle*,struct btrfs_fs_info*) ; 
 int FUNC3 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ulist*,struct ulist*) ; 
 scalar_t__ FUNC4 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct ulist*) ; 

__attribute__((used)) static int FUNC10(struct btrfs_root *root,
		u32 sectorsize, u32 nodesize)
{
	struct btrfs_trans_handle trans;
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct ulist *old_roots = NULL;
	struct ulist *new_roots = NULL;
	int ret;

	FUNC2(&trans, fs_info);

	FUNC8("running qgroup add/remove tests");
	ret = FUNC0(&trans, BTRFS_FS_TREE_OBJECTID);
	if (ret) {
		FUNC7("couldn't create a qgroup %d", ret);
		return ret;
	}

	/*
	 * Since the test trans doesn't have the complicated delayed refs,
	 * we can only call btrfs_qgroup_account_extent() directly to test
	 * quota.
	 */
	ret = FUNC1(&trans, fs_info, nodesize, 0, &old_roots,
			false);
	if (ret) {
		FUNC9(old_roots);
		FUNC7("couldn't find old roots: %d", ret);
		return ret;
	}

	ret = FUNC5(root, nodesize, nodesize, 0,
				BTRFS_FS_TREE_OBJECTID);
	if (ret)
		return ret;

	ret = FUNC1(&trans, fs_info, nodesize, 0, &new_roots,
			false);
	if (ret) {
		FUNC9(old_roots);
		FUNC9(new_roots);
		FUNC7("couldn't find old roots: %d", ret);
		return ret;
	}

	ret = FUNC3(&trans, nodesize, nodesize, old_roots,
					  new_roots);
	if (ret) {
		FUNC7("couldn't account space for a qgroup %d", ret);
		return ret;
	}

	if (FUNC4(fs_info, BTRFS_FS_TREE_OBJECTID,
				nodesize, nodesize)) {
		FUNC7("qgroup counts didn't match expected values");
		return -EINVAL;
	}
	old_roots = NULL;
	new_roots = NULL;

	ret = FUNC1(&trans, fs_info, nodesize, 0, &old_roots,
			false);
	if (ret) {
		FUNC9(old_roots);
		FUNC7("couldn't find old roots: %d", ret);
		return ret;
	}

	ret = FUNC6(root, nodesize, nodesize);
	if (ret)
		return -EINVAL;

	ret = FUNC1(&trans, fs_info, nodesize, 0, &new_roots,
			false);
	if (ret) {
		FUNC9(old_roots);
		FUNC9(new_roots);
		FUNC7("couldn't find old roots: %d", ret);
		return ret;
	}

	ret = FUNC3(&trans, nodesize, nodesize, old_roots,
					  new_roots);
	if (ret) {
		FUNC7("couldn't account space for a qgroup %d", ret);
		return -EINVAL;
	}

	if (FUNC4(fs_info, BTRFS_FS_TREE_OBJECTID, 0, 0)) {
		FUNC7("qgroup counts didn't match expected values");
		return -EINVAL;
	}

	return 0;
}