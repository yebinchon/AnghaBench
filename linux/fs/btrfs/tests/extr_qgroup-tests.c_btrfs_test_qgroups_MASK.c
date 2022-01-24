#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {int alloc_bytenr; TYPE_2__* fs_info; TYPE_1__ root_key; int /*<<< orphan*/  node; } ;
struct btrfs_fs_info {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {struct btrfs_root* fs_root; struct btrfs_root* quota_root; struct btrfs_root* tree_root; struct btrfs_root* extent_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FIRST_FREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_FS_QUOTA_ENABLED ; 
 int /*<<< orphan*/  BTRFS_FS_TREE_OBJECTID ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct btrfs_root*) ; 
 int FUNC1 (struct btrfs_root*) ; 
 int /*<<< orphan*/  TEST_ALLOC_FS_INFO ; 
 int /*<<< orphan*/  TEST_ALLOC_ROOT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 struct btrfs_fs_info* FUNC3 (int,int) ; 
 struct btrfs_root* FUNC4 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_root*) ; 
 int FUNC7 (TYPE_2__*,struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (struct btrfs_root*,int,int) ; 
 int FUNC14 (struct btrfs_root*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

int FUNC16(u32 sectorsize, u32 nodesize)
{
	struct btrfs_fs_info *fs_info = NULL;
	struct btrfs_root *root;
	struct btrfs_root *tmp_root;
	int ret = 0;

	fs_info = FUNC3(nodesize, sectorsize);
	if (!fs_info) {
		FUNC15(TEST_ALLOC_FS_INFO);
		return -ENOMEM;
	}

	root = FUNC4(fs_info);
	if (FUNC0(root)) {
		FUNC15(TEST_ALLOC_ROOT);
		ret = FUNC1(root);
		goto out;
	}

	/* We are using this root as our extent root */
	root->fs_info->extent_root = root;

	/*
	 * Some of the paths we test assume we have a filled out fs_info, so we
	 * just need to add the root in there so we don't panic.
	 */
	root->fs_info->tree_root = root;
	root->fs_info->quota_root = root;
	FUNC10(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags);

	/*
	 * Can't use bytenr 0, some things freak out
	 * *cough*backref walking code*cough*
	 */
	root->node = FUNC2(root->fs_info, nodesize);
	if (!root->node) {
		FUNC11("couldn't allocate dummy buffer");
		ret = -ENOMEM;
		goto out;
	}
	FUNC8(root->node, 0);
	FUNC9(root->node, 0);
	root->alloc_bytenr += 2 * nodesize;

	tmp_root = FUNC4(fs_info);
	if (FUNC0(tmp_root)) {
		FUNC15(TEST_ALLOC_ROOT);
		ret = FUNC1(tmp_root);
		goto out;
	}

	tmp_root->root_key.objectid = BTRFS_FS_TREE_OBJECTID;
	root->fs_info->fs_root = tmp_root;
	ret = FUNC7(root->fs_info, tmp_root);
	if (ret) {
		FUNC11("couldn't insert fs root %d", ret);
		goto out;
	}

	tmp_root = FUNC4(fs_info);
	if (FUNC0(tmp_root)) {
		FUNC15(TEST_ALLOC_ROOT);
		ret = FUNC1(tmp_root);
		goto out;
	}

	tmp_root->root_key.objectid = BTRFS_FIRST_FREE_OBJECTID;
	ret = FUNC7(root->fs_info, tmp_root);
	if (ret) {
		FUNC11("couldn't insert fs root %d", ret);
		goto out;
	}

	FUNC12("running qgroup tests");
	ret = FUNC14(root, sectorsize, nodesize);
	if (ret)
		goto out;
	ret = FUNC13(root, sectorsize, nodesize);
out:
	FUNC6(root);
	FUNC5(fs_info);
	return ret;
}