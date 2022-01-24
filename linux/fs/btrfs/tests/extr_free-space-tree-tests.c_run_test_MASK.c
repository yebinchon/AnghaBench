#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int (* test_func_t ) (struct btrfs_trans_handle*,TYPE_1__*,struct btrfs_block_group_cache*,struct btrfs_path*,int) ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int alloc_bytenr; int /*<<< orphan*/  node; TYPE_1__* fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int bitmap_high_thresh; int needs_free_space; TYPE_1__* fs_info; scalar_t__ bitmap_low_thresh; } ;
struct TYPE_5__ {struct btrfs_root* tree_root; struct btrfs_root* free_space_root; int /*<<< orphan*/  super_copy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FEATURE_COMPAT_RO_FREE_SPACE_TREE ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct btrfs_root*) ; 
 int FUNC1 (struct btrfs_root*) ; 
 int /*<<< orphan*/  TEST_ALLOC_BLOCK_GROUP ; 
 int /*<<< orphan*/  TEST_ALLOC_EXTENT_BUFFER ; 
 int /*<<< orphan*/  TEST_ALLOC_FS_INFO ; 
 int /*<<< orphan*/  TEST_ALLOC_ROOT ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 struct btrfs_block_group_cache* FUNC4 (struct btrfs_fs_info*,int) ; 
 struct btrfs_fs_info* FUNC5 (int,int) ; 
 struct btrfs_root* FUNC6 (struct btrfs_fs_info*) ; 
 struct btrfs_path* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_path*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_trans_handle*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*) ; 
 int FUNC18 (struct btrfs_trans_handle*,struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(test_func_t test_func, int bitmaps, u32 sectorsize,
		    u32 nodesize, u32 alignment)
{
	struct btrfs_fs_info *fs_info;
	struct btrfs_root *root = NULL;
	struct btrfs_block_group_cache *cache = NULL;
	struct btrfs_trans_handle trans;
	struct btrfs_path *path = NULL;
	int ret;

	fs_info = FUNC5(nodesize, sectorsize);
	if (!fs_info) {
		FUNC20(TEST_ALLOC_FS_INFO);
		ret = -ENOMEM;
		goto out;
	}

	root = FUNC6(fs_info);
	if (FUNC0(root)) {
		FUNC20(TEST_ALLOC_ROOT);
		ret = FUNC1(root);
		goto out;
	}

	FUNC16(root->fs_info->super_copy,
					BTRFS_FEATURE_COMPAT_RO_FREE_SPACE_TREE);
	root->fs_info->free_space_root = root;
	root->fs_info->tree_root = root;

	root->node = FUNC3(root->fs_info, nodesize);
	if (!root->node) {
		FUNC20(TEST_ALLOC_EXTENT_BUFFER);
		ret = -ENOMEM;
		goto out;
	}
	FUNC14(root->node, 0);
	FUNC15(root->node, 0);
	root->alloc_bytenr += 2 * nodesize;

	cache = FUNC4(fs_info, 8 * alignment);
	if (!cache) {
		FUNC20(TEST_ALLOC_BLOCK_GROUP);
		ret = -ENOMEM;
		goto out;
	}
	cache->bitmap_low_thresh = 0;
	cache->bitmap_high_thresh = (u32)-1;
	cache->needs_free_space = 1;
	cache->fs_info = root->fs_info;

	FUNC13(&trans, root->fs_info);

	path = FUNC7();
	if (!path) {
		FUNC20(TEST_ALLOC_ROOT);
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC2(&trans, cache);
	if (ret) {
		FUNC19("could not add block group free space");
		goto out;
	}

	if (bitmaps) {
		ret = FUNC17(&trans, cache, path);
		if (ret) {
			FUNC19("could not convert block group to bitmaps");
			goto out;
		}
	}

	ret = test_func(&trans, root->fs_info, cache, path, alignment);
	if (ret)
		goto out;

	ret = FUNC18(&trans, cache);
	if (ret) {
		FUNC19("could not remove block group free space");
		goto out;
	}

	if (FUNC12(root->node) != 0) {
		FUNC19("free space tree has leftover items");
		ret = -EINVAL;
		goto out;
	}

	ret = 0;
out:
	FUNC11(path);
	FUNC8(cache);
	FUNC10(root);
	FUNC9(fs_info);
	return ret;
}