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
struct extent_map_tree {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  TEST_ALLOC_FS_INFO ; 
 struct btrfs_fs_info* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_map_tree*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_map_tree*) ; 
 struct extent_map_tree* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct btrfs_fs_info*,struct extent_map_tree*) ; 
 int FUNC6 (struct btrfs_fs_info*,struct extent_map_tree*) ; 
 int FUNC7 (struct btrfs_fs_info*,struct extent_map_tree*) ; 
 int FUNC8 (struct btrfs_fs_info*,struct extent_map_tree*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(void)
{
	struct btrfs_fs_info *fs_info = NULL;
	struct extent_map_tree *em_tree;
	int ret = 0;

	FUNC9("running extent_map tests");

	/*
	 * Note: the fs_info is not set up completely, we only need
	 * fs_info::fsid for the tracepoint.
	 */
	fs_info = FUNC0(PAGE_SIZE, PAGE_SIZE);
	if (!fs_info) {
		FUNC10(TEST_ALLOC_FS_INFO);
		return -ENOMEM;
	}

	em_tree = FUNC4(sizeof(*em_tree), GFP_KERNEL);
	if (!em_tree) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC2(em_tree);

	ret = FUNC5(fs_info, em_tree);
	if (ret)
		goto out;
	ret = FUNC6(fs_info, em_tree);
	if (ret)
		goto out;
	ret = FUNC7(fs_info, em_tree);
	if (ret)
		goto out;
	ret = FUNC8(fs_info, em_tree);

out:
	FUNC3(em_tree);
	FUNC1(fs_info);

	return ret;
}