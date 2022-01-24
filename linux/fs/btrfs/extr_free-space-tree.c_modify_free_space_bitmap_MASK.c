#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  scalar_t__ u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * slots; int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ offset; void* type; } ;
struct TYPE_4__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_block_group_cache {TYPE_2__ key; TYPE_1__* fs_info; } ;
struct TYPE_3__ {scalar_t__ sectorsize; struct btrfs_root* free_space_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_path*) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_block_group_cache*,struct btrfs_path*,scalar_t__*,scalar_t__*,int) ; 
 int FUNC5 (struct btrfs_block_group_cache*,struct btrfs_path*,scalar_t__) ; 
 int FUNC6 (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*,int) ; 

__attribute__((used)) static int FUNC7(struct btrfs_trans_handle *trans,
				    struct btrfs_block_group_cache *block_group,
				    struct btrfs_path *path,
				    u64 start, u64 size, int remove)
{
	struct btrfs_root *root = block_group->fs_info->free_space_root;
	struct btrfs_key key;
	u64 end = start + size;
	u64 cur_start, cur_size;
	int prev_bit, next_bit;
	int new_extents;
	int ret;

	/*
	 * Read the bit for the block immediately before the extent of space if
	 * that block is within the block group.
	 */
	if (start > block_group->key.objectid) {
		u64 prev_block = start - block_group->fs_info->sectorsize;

		key.objectid = prev_block;
		key.type = (u8)-1;
		key.offset = (u64)-1;

		ret = FUNC2(trans, root, &key, path, 0, 1);
		if (ret)
			goto out;

		prev_bit = FUNC5(block_group, path, prev_block);

		/* The previous block may have been in the previous bitmap. */
		FUNC0(path->nodes[0], &key, path->slots[0]);
		if (start >= key.objectid + key.offset) {
			ret = FUNC3(trans, root, path);
			if (ret)
				goto out;
		}
	} else {
		key.objectid = start;
		key.type = (u8)-1;
		key.offset = (u64)-1;

		ret = FUNC2(trans, root, &key, path, 0, 1);
		if (ret)
			goto out;

		prev_bit = -1;
	}

	/*
	 * Iterate over all of the bitmaps overlapped by the extent of space,
	 * clearing/setting bits as required.
	 */
	cur_start = start;
	cur_size = size;
	while (1) {
		FUNC4(block_group, path, &cur_start, &cur_size,
				    !remove);
		if (cur_size == 0)
			break;
		ret = FUNC3(trans, root, path);
		if (ret)
			goto out;
	}

	/*
	 * Read the bit for the block immediately after the extent of space if
	 * that block is within the block group.
	 */
	if (end < block_group->key.objectid + block_group->key.offset) {
		/* The next block may be in the next bitmap. */
		FUNC0(path->nodes[0], &key, path->slots[0]);
		if (end >= key.objectid + key.offset) {
			ret = FUNC3(trans, root, path);
			if (ret)
				goto out;
		}

		next_bit = FUNC5(block_group, path, end);
	} else {
		next_bit = -1;
	}

	if (remove) {
		new_extents = -1;
		if (prev_bit == 1) {
			/* Leftover on the left. */
			new_extents++;
		}
		if (next_bit == 1) {
			/* Leftover on the right. */
			new_extents++;
		}
	} else {
		new_extents = 1;
		if (prev_bit == 1) {
			/* Merging with neighbor on the left. */
			new_extents--;
		}
		if (next_bit == 1) {
			/* Merging with neighbor on the right. */
			new_extents--;
		}
	}

	FUNC1(path);
	ret = FUNC6(trans, block_group, path,
					     new_extents);

out:
	return ret;
}