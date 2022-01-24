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
typedef  int u32 ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_block_group_cache {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* extent_root; } ;

/* Variables and functions */
 int BITS_PER_BITMAP ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct btrfs_root*) ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC1 (struct btrfs_root*) ; 
 int /*<<< orphan*/  TEST_ALLOC_BLOCK_GROUP ; 
 int /*<<< orphan*/  TEST_ALLOC_FS_INFO ; 
 int /*<<< orphan*/  TEST_ALLOC_ROOT ; 
 struct btrfs_block_group_cache* FUNC2 (struct btrfs_fs_info*,scalar_t__) ; 
 struct btrfs_fs_info* FUNC3 (int,int) ; 
 struct btrfs_root* FUNC4 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_root*) ; 
 int FUNC8 (struct btrfs_block_group_cache*,int) ; 
 int FUNC9 (struct btrfs_block_group_cache*,int) ; 
 int FUNC10 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct btrfs_block_group_cache*,int) ; 

int FUNC14(u32 sectorsize, u32 nodesize)
{
	struct btrfs_fs_info *fs_info;
	struct btrfs_block_group_cache *cache;
	struct btrfs_root *root = NULL;
	int ret = -ENOMEM;

	FUNC11("running btrfs free space cache tests");
	fs_info = FUNC3(nodesize, sectorsize);
	if (!fs_info) {
		FUNC12(TEST_ALLOC_FS_INFO);
		return -ENOMEM;
	}

	/*
	 * For ppc64 (with 64k page size), bytes per bitmap might be
	 * larger than 1G.  To make bitmap test available in ppc64,
	 * alloc dummy block group whose size cross bitmaps.
	 */
	cache = FUNC2(fs_info,
				      BITS_PER_BITMAP * sectorsize + PAGE_SIZE);
	if (!cache) {
		FUNC12(TEST_ALLOC_BLOCK_GROUP);
		FUNC6(fs_info);
		return 0;
	}

	root = FUNC4(fs_info);
	if (FUNC0(root)) {
		FUNC12(TEST_ALLOC_ROOT);
		ret = FUNC1(root);
		goto out;
	}

	root->fs_info->extent_root = root;

	ret = FUNC10(cache);
	if (ret)
		goto out;
	ret = FUNC8(cache, sectorsize);
	if (ret)
		goto out;
	ret = FUNC9(cache, sectorsize);
	if (ret)
		goto out;

	ret = FUNC13(cache, sectorsize);
out:
	FUNC5(cache);
	FUNC7(root);
	FUNC6(fs_info);
	return ret;
}