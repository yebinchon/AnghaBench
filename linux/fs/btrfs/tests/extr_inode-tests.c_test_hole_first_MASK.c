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
struct inode {int dummy; } ;
struct extent_map {scalar_t__ block_start; int start; int len; scalar_t__ flags; int /*<<< orphan*/  node; } ;
struct btrfs_root {scalar_t__ block_start; int start; int len; scalar_t__ flags; int /*<<< orphan*/  node; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_4__ {scalar_t__ offset; int /*<<< orphan*/  objectid; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {struct extent_map* root; TYPE_1__ location; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FILE_EXTENT_REG ; 
 int /*<<< orphan*/  BTRFS_FIRST_FREE_OBJECTID ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_ITEM_KEY ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ EXTENT_MAP_HOLE ; 
 scalar_t__ FUNC1 (struct extent_map*) ; 
 int /*<<< orphan*/  TEST_ALLOC_FS_INFO ; 
 int /*<<< orphan*/  TEST_ALLOC_INODE ; 
 int /*<<< orphan*/  TEST_ALLOC_ROOT ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,int) ; 
 struct btrfs_fs_info* FUNC3 (int,int) ; 
 struct extent_map* FUNC4 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_map*) ; 
 struct extent_map* FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 struct inode* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_map*,int,int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ vacancy_only ; 

__attribute__((used)) static int FUNC18(u32 sectorsize, u32 nodesize)
{
	struct btrfs_fs_info *fs_info = NULL;
	struct inode *inode = NULL;
	struct btrfs_root *root = NULL;
	struct extent_map *em = NULL;
	int ret = -ENOMEM;

	FUNC16("running hole first btrfs_get_extent test");

	inode = FUNC8();
	if (!inode) {
		FUNC17(TEST_ALLOC_INODE);
		return ret;
	}

	FUNC0(inode)->location.type = BTRFS_INODE_ITEM_KEY;
	FUNC0(inode)->location.objectid = BTRFS_FIRST_FREE_OBJECTID;
	FUNC0(inode)->location.offset = 0;

	fs_info = FUNC3(nodesize, sectorsize);
	if (!fs_info) {
		FUNC17(TEST_ALLOC_FS_INFO);
		goto out;
	}

	root = FUNC4(fs_info);
	if (FUNC1(root)) {
		FUNC17(TEST_ALLOC_ROOT);
		goto out;
	}

	root->node = FUNC2(fs_info, nodesize);
	if (!root->node) {
		FUNC17(TEST_ALLOC_ROOT);
		goto out;
	}

	FUNC10(root->node, 0);
	FUNC9(root->node, 0);
	FUNC0(inode)->root = root;
	ret = -EINVAL;

	/*
	 * Need a blank inode item here just so we don't confuse
	 * btrfs_get_extent.
	 */
	FUNC13(root);
	FUNC12(root, sectorsize, sectorsize, sectorsize, 0, sectorsize,
		      sectorsize, BTRFS_FILE_EXTENT_REG, 0, 1);
	em = FUNC7(FUNC0(inode), NULL, 0, 0, 2 * sectorsize, 0);
	if (FUNC1(em)) {
		FUNC15("got an error when we shouldn't have");
		goto out;
	}
	if (em->block_start != EXTENT_MAP_HOLE) {
		FUNC15("expected a hole, got %llu", em->block_start);
		goto out;
	}
	if (em->start != 0 || em->len != sectorsize) {
		FUNC15(
	"unexpected extent wanted start 0 len %u, got start %llu len %llu",
			sectorsize, em->start, em->len);
		goto out;
	}
	if (em->flags != vacancy_only) {
		FUNC15("wrong flags, wanted %lu, have %lu", vacancy_only,
			 em->flags);
		goto out;
	}
	FUNC11(em);

	em = FUNC7(FUNC0(inode), NULL, 0, sectorsize,
			2 * sectorsize, 0);
	if (FUNC1(em)) {
		FUNC15("got an error when we shouldn't have");
		goto out;
	}
	if (em->block_start != sectorsize) {
		FUNC15("expected a real extent, got %llu", em->block_start);
		goto out;
	}
	if (em->start != sectorsize || em->len != sectorsize) {
		FUNC15(
	"unexpected extent wanted start %u len %u, got start %llu len %llu",
			sectorsize, sectorsize, em->start, em->len);
		goto out;
	}
	if (em->flags != 0) {
		FUNC15("unexpected flags set, wanted 0 got %lu",
			 em->flags);
		goto out;
	}
	ret = 0;
out:
	if (!FUNC1(em))
		FUNC11(em);
	FUNC14(inode);
	FUNC6(root);
	FUNC5(fs_info);
	return ret;
}