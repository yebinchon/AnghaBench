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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u64 ;
struct btrfs_trans_handle {TYPE_1__* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int /*<<< orphan*/ * slots; int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct btrfs_block_group_cache {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* free_space_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BTRFS_FREE_SPACE_EXTENT_KEY ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 int FUNC5 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 
 int FUNC6 (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*,int) ; 

__attribute__((used)) static int FUNC7(struct btrfs_trans_handle *trans,
				    struct btrfs_block_group_cache *block_group,
				    struct btrfs_path *path,
				    u64 start, u64 size)
{
	struct btrfs_root *root = trans->fs_info->free_space_root;
	struct btrfs_key key;
	u64 found_start, found_end;
	u64 end = start + size;
	int new_extents = -1;
	int ret;

	key.objectid = start;
	key.type = (u8)-1;
	key.offset = (u64)-1;

	ret = FUNC5(trans, root, &key, path, -1, 1);
	if (ret)
		goto out;

	FUNC3(path->nodes[0], &key, path->slots[0]);

	FUNC0(key.type == BTRFS_FREE_SPACE_EXTENT_KEY);

	found_start = key.objectid;
	found_end = key.objectid + key.offset;
	FUNC0(start >= found_start && end <= found_end);

	/*
	 * Okay, now that we've found the free space extent which contains the
	 * free space that we are removing, there are four cases:
	 *
	 * 1. We're using the whole extent: delete the key we found and
	 * decrement the free space extent count.
	 * 2. We are using part of the extent starting at the beginning: delete
	 * the key we found and insert a new key representing the leftover at
	 * the end. There is no net change in the number of extents.
	 * 3. We are using part of the extent ending at the end: delete the key
	 * we found and insert a new key representing the leftover at the
	 * beginning. There is no net change in the number of extents.
	 * 4. We are using part of the extent in the middle: delete the key we
	 * found and insert two new keys representing the leftovers on each
	 * side. Where we used to have one extent, we now have two, so increment
	 * the extent count. We may need to convert the block group to bitmaps
	 * as a result.
	 */

	/* Delete the existing key (cases 1-4). */
	ret = FUNC1(trans, root, path);
	if (ret)
		goto out;

	/* Add a key for leftovers at the beginning (cases 3 and 4). */
	if (start > found_start) {
		key.objectid = found_start;
		key.type = BTRFS_FREE_SPACE_EXTENT_KEY;
		key.offset = start - found_start;

		FUNC4(path);
		ret = FUNC2(trans, root, path, &key, 0);
		if (ret)
			goto out;
		new_extents++;
	}

	/* Add a key for leftovers at the end (cases 2 and 4). */
	if (end < found_end) {
		key.objectid = end;
		key.type = BTRFS_FREE_SPACE_EXTENT_KEY;
		key.offset = found_end - end;

		FUNC4(path);
		ret = FUNC2(trans, root, path, &key, 0);
		if (ret)
			goto out;
		new_extents++;
	}

	FUNC4(path);
	ret = FUNC6(trans, block_group, path,
					     new_extents);

out:
	return ret;
}