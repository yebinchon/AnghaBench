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
typedef  int u64 ;
typedef  int u32 ;
struct inode {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {int outstanding_extents; int /*<<< orphan*/  io_tree; struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int BTRFS_MAX_EXTENT_SIZE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EXTENT_DELALLOC ; 
 int EXTENT_UPTODATE ; 
 scalar_t__ FUNC1 (struct btrfs_root*) ; 
 int /*<<< orphan*/  TEST_ALLOC_FS_INFO ; 
 int /*<<< orphan*/  TEST_ALLOC_INODE ; 
 int /*<<< orphan*/  TEST_ALLOC_ROOT ; 
 struct btrfs_fs_info* FUNC2 (int,int) ; 
 struct btrfs_root* FUNC3 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_root*) ; 
 struct inode* FUNC6 () ; 
 int FUNC7 (struct inode*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(u32 sectorsize, u32 nodesize)
{
	struct btrfs_fs_info *fs_info = NULL;
	struct inode *inode = NULL;
	struct btrfs_root *root = NULL;
	int ret = -ENOMEM;

	FUNC12("running outstanding_extents tests");

	inode = FUNC6();
	if (!inode) {
		FUNC13(TEST_ALLOC_INODE);
		return ret;
	}

	fs_info = FUNC2(nodesize, sectorsize);
	if (!fs_info) {
		FUNC13(TEST_ALLOC_FS_INFO);
		goto out;
	}

	root = FUNC3(fs_info);
	if (FUNC1(root)) {
		FUNC13(TEST_ALLOC_ROOT);
		goto out;
	}

	FUNC0(inode)->root = root;
	FUNC8(inode);

	/* [BTRFS_MAX_EXTENT_SIZE] */
	ret = FUNC7(inode, 0, BTRFS_MAX_EXTENT_SIZE - 1, 0,
					NULL);
	if (ret) {
		FUNC11("btrfs_set_extent_delalloc returned %d", ret);
		goto out;
	}
	if (FUNC0(inode)->outstanding_extents != 1) {
		ret = -EINVAL;
		FUNC11("miscount, wanted 1, got %u",
			 FUNC0(inode)->outstanding_extents);
		goto out;
	}

	/* [BTRFS_MAX_EXTENT_SIZE][sectorsize] */
	ret = FUNC7(inode, BTRFS_MAX_EXTENT_SIZE,
					BTRFS_MAX_EXTENT_SIZE + sectorsize - 1,
					0, NULL);
	if (ret) {
		FUNC11("btrfs_set_extent_delalloc returned %d", ret);
		goto out;
	}
	if (FUNC0(inode)->outstanding_extents != 2) {
		ret = -EINVAL;
		FUNC11("miscount, wanted 2, got %u",
			 FUNC0(inode)->outstanding_extents);
		goto out;
	}

	/* [BTRFS_MAX_EXTENT_SIZE/2][sectorsize HOLE][the rest] */
	ret = FUNC9(&FUNC0(inode)->io_tree,
			       BTRFS_MAX_EXTENT_SIZE >> 1,
			       (BTRFS_MAX_EXTENT_SIZE >> 1) + sectorsize - 1,
			       EXTENT_DELALLOC | EXTENT_UPTODATE, 0, 0, NULL);
	if (ret) {
		FUNC11("clear_extent_bit returned %d", ret);
		goto out;
	}
	if (FUNC0(inode)->outstanding_extents != 2) {
		ret = -EINVAL;
		FUNC11("miscount, wanted 2, got %u",
			 FUNC0(inode)->outstanding_extents);
		goto out;
	}

	/* [BTRFS_MAX_EXTENT_SIZE][sectorsize] */
	ret = FUNC7(inode, BTRFS_MAX_EXTENT_SIZE >> 1,
					(BTRFS_MAX_EXTENT_SIZE >> 1)
					+ sectorsize - 1,
					0, NULL);
	if (ret) {
		FUNC11("btrfs_set_extent_delalloc returned %d", ret);
		goto out;
	}
	if (FUNC0(inode)->outstanding_extents != 2) {
		ret = -EINVAL;
		FUNC11("miscount, wanted 2, got %u",
			 FUNC0(inode)->outstanding_extents);
		goto out;
	}

	/*
	 * [BTRFS_MAX_EXTENT_SIZE+sectorsize][sectorsize HOLE][BTRFS_MAX_EXTENT_SIZE+sectorsize]
	 */
	ret = FUNC7(inode,
			BTRFS_MAX_EXTENT_SIZE + 2 * sectorsize,
			(BTRFS_MAX_EXTENT_SIZE << 1) + 3 * sectorsize - 1,
			0, NULL);
	if (ret) {
		FUNC11("btrfs_set_extent_delalloc returned %d", ret);
		goto out;
	}
	if (FUNC0(inode)->outstanding_extents != 4) {
		ret = -EINVAL;
		FUNC11("miscount, wanted 4, got %u",
			 FUNC0(inode)->outstanding_extents);
		goto out;
	}

	/*
	* [BTRFS_MAX_EXTENT_SIZE+sectorsize][sectorsize][BTRFS_MAX_EXTENT_SIZE+sectorsize]
	*/
	ret = FUNC7(inode,
			BTRFS_MAX_EXTENT_SIZE + sectorsize,
			BTRFS_MAX_EXTENT_SIZE + 2 * sectorsize - 1, 0, NULL);
	if (ret) {
		FUNC11("btrfs_set_extent_delalloc returned %d", ret);
		goto out;
	}
	if (FUNC0(inode)->outstanding_extents != 3) {
		ret = -EINVAL;
		FUNC11("miscount, wanted 3, got %u",
			 FUNC0(inode)->outstanding_extents);
		goto out;
	}

	/* [BTRFS_MAX_EXTENT_SIZE+4k][4K HOLE][BTRFS_MAX_EXTENT_SIZE+4k] */
	ret = FUNC9(&FUNC0(inode)->io_tree,
			       BTRFS_MAX_EXTENT_SIZE + sectorsize,
			       BTRFS_MAX_EXTENT_SIZE + 2 * sectorsize - 1,
			       EXTENT_DELALLOC | EXTENT_UPTODATE, 0, 0, NULL);
	if (ret) {
		FUNC11("clear_extent_bit returned %d", ret);
		goto out;
	}
	if (FUNC0(inode)->outstanding_extents != 4) {
		ret = -EINVAL;
		FUNC11("miscount, wanted 4, got %u",
			 FUNC0(inode)->outstanding_extents);
		goto out;
	}

	/*
	 * Refill the hole again just for good measure, because I thought it
	 * might fail and I'd rather satisfy my paranoia at this point.
	 */
	ret = FUNC7(inode,
			BTRFS_MAX_EXTENT_SIZE + sectorsize,
			BTRFS_MAX_EXTENT_SIZE + 2 * sectorsize - 1, 0, NULL);
	if (ret) {
		FUNC11("btrfs_set_extent_delalloc returned %d", ret);
		goto out;
	}
	if (FUNC0(inode)->outstanding_extents != 3) {
		ret = -EINVAL;
		FUNC11("miscount, wanted 3, got %u",
			 FUNC0(inode)->outstanding_extents);
		goto out;
	}

	/* Empty */
	ret = FUNC9(&FUNC0(inode)->io_tree, 0, (u64)-1,
			       EXTENT_DELALLOC | EXTENT_UPTODATE, 0, 0, NULL);
	if (ret) {
		FUNC11("clear_extent_bit returned %d", ret);
		goto out;
	}
	if (FUNC0(inode)->outstanding_extents) {
		ret = -EINVAL;
		FUNC11("miscount, wanted 0, got %u",
			 FUNC0(inode)->outstanding_extents);
		goto out;
	}
	ret = 0;
out:
	if (ret)
		FUNC9(&FUNC0(inode)->io_tree, 0, (u64)-1,
				 EXTENT_DELALLOC | EXTENT_UPTODATE, 0, 0, NULL);
	FUNC10(inode);
	FUNC5(root);
	FUNC4(fs_info);
	return ret;
}