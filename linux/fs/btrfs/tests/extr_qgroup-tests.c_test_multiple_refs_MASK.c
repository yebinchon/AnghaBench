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
 int /*<<< orphan*/  BTRFS_FIRST_FREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_FS_TREE_OBJECTID ; 
 int EINVAL ; 
 int FUNC0 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btrfs_trans_handle*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ulist**,int) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_trans_handle*,struct btrfs_fs_info*) ; 
 int FUNC4 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ulist*,struct ulist*) ; 
 scalar_t__ FUNC5 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ulist*) ; 

__attribute__((used)) static int FUNC11(struct btrfs_root *root,
		u32 sectorsize, u32 nodesize)
{
	struct btrfs_trans_handle trans;
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct ulist *old_roots = NULL;
	struct ulist *new_roots = NULL;
	int ret;

	FUNC3(&trans, fs_info);

	FUNC9("running qgroup multiple refs test");

	/*
	 * We have BTRFS_FS_TREE_OBJECTID created already from the
	 * previous test.
	 */
	ret = FUNC1(&trans, BTRFS_FIRST_FREE_OBJECTID);
	if (ret) {
		FUNC8("couldn't create a qgroup %d", ret);
		return ret;
	}

	ret = FUNC2(&trans, fs_info, nodesize, 0, &old_roots,
			false);
	if (ret) {
		FUNC10(old_roots);
		FUNC8("couldn't find old roots: %d", ret);
		return ret;
	}

	ret = FUNC6(root, nodesize, nodesize, 0,
				BTRFS_FS_TREE_OBJECTID);
	if (ret)
		return ret;

	ret = FUNC2(&trans, fs_info, nodesize, 0, &new_roots,
			false);
	if (ret) {
		FUNC10(old_roots);
		FUNC10(new_roots);
		FUNC8("couldn't find old roots: %d", ret);
		return ret;
	}

	ret = FUNC4(&trans, nodesize, nodesize, old_roots,
					  new_roots);
	if (ret) {
		FUNC8("couldn't account space for a qgroup %d", ret);
		return ret;
	}

	if (FUNC5(fs_info, BTRFS_FS_TREE_OBJECTID,
				       nodesize, nodesize)) {
		FUNC8("qgroup counts didn't match expected values");
		return -EINVAL;
	}

	ret = FUNC2(&trans, fs_info, nodesize, 0, &old_roots,
			false);
	if (ret) {
		FUNC10(old_roots);
		FUNC8("couldn't find old roots: %d", ret);
		return ret;
	}

	ret = FUNC0(root, nodesize, nodesize, 0,
			BTRFS_FIRST_FREE_OBJECTID);
	if (ret)
		return ret;

	ret = FUNC2(&trans, fs_info, nodesize, 0, &new_roots,
			false);
	if (ret) {
		FUNC10(old_roots);
		FUNC10(new_roots);
		FUNC8("couldn't find old roots: %d", ret);
		return ret;
	}

	ret = FUNC4(&trans, nodesize, nodesize, old_roots,
					  new_roots);
	if (ret) {
		FUNC8("couldn't account space for a qgroup %d", ret);
		return ret;
	}

	if (FUNC5(fs_info, BTRFS_FS_TREE_OBJECTID,
					nodesize, 0)) {
		FUNC8("qgroup counts didn't match expected values");
		return -EINVAL;
	}

	if (FUNC5(fs_info, BTRFS_FIRST_FREE_OBJECTID,
					nodesize, 0)) {
		FUNC8("qgroup counts didn't match expected values");
		return -EINVAL;
	}

	ret = FUNC2(&trans, fs_info, nodesize, 0, &old_roots,
			false);
	if (ret) {
		FUNC10(old_roots);
		FUNC8("couldn't find old roots: %d", ret);
		return ret;
	}

	ret = FUNC7(root, nodesize, nodesize, 0,
				BTRFS_FIRST_FREE_OBJECTID);
	if (ret)
		return ret;

	ret = FUNC2(&trans, fs_info, nodesize, 0, &new_roots,
			false);
	if (ret) {
		FUNC10(old_roots);
		FUNC10(new_roots);
		FUNC8("couldn't find old roots: %d", ret);
		return ret;
	}

	ret = FUNC4(&trans, nodesize, nodesize, old_roots,
					  new_roots);
	if (ret) {
		FUNC8("couldn't account space for a qgroup %d", ret);
		return ret;
	}

	if (FUNC5(fs_info, BTRFS_FIRST_FREE_OBJECTID,
					0, 0)) {
		FUNC8("qgroup counts didn't match expected values");
		return -EINVAL;
	}

	if (FUNC5(fs_info, BTRFS_FS_TREE_OBJECTID,
					nodesize, nodesize)) {
		FUNC8("qgroup counts didn't match expected values");
		return -EINVAL;
	}

	return 0;
}