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
typedef  scalar_t__ u32 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * nodes; } ;
struct btrfs_free_space_info {int dummy; } ;
struct btrfs_block_group_cache {scalar_t__ bitmap_high_thresh; scalar_t__ bitmap_low_thresh; } ;

/* Variables and functions */
 scalar_t__ BTRFS_FREE_SPACE_USING_BITMAPS ; 
 scalar_t__ FUNC0 (struct btrfs_free_space_info*) ; 
 int FUNC1 (struct btrfs_free_space_info*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct btrfs_free_space_info*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct btrfs_free_space_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct btrfs_free_space_info*,scalar_t__) ; 
 int FUNC7 (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*) ; 
 struct btrfs_free_space_info* FUNC9 (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*,int) ; 

__attribute__((used)) static int FUNC10(struct btrfs_trans_handle *trans,
					  struct btrfs_block_group_cache *block_group,
					  struct btrfs_path *path,
					  int new_extents)
{
	struct btrfs_free_space_info *info;
	u32 flags;
	u32 extent_count;
	int ret = 0;

	if (new_extents == 0)
		return 0;

	info = FUNC9(trans, block_group, path, 1);
	if (FUNC0(info)) {
		ret = FUNC1(info);
		goto out;
	}
	flags = FUNC3(path->nodes[0], info);
	extent_count = FUNC2(path->nodes[0], info);

	extent_count += new_extents;
	FUNC6(path->nodes[0], info, extent_count);
	FUNC4(path->nodes[0]);
	FUNC5(path);

	if (!(flags & BTRFS_FREE_SPACE_USING_BITMAPS) &&
	    extent_count > block_group->bitmap_high_thresh) {
		ret = FUNC7(trans, block_group, path);
	} else if ((flags & BTRFS_FREE_SPACE_USING_BITMAPS) &&
		   extent_count < block_group->bitmap_low_thresh) {
		ret = FUNC8(trans, block_group, path);
	}

out:
	return ret;
}