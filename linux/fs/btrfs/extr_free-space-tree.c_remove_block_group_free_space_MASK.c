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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {TYPE_2__* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct TYPE_3__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_block_group_cache {TYPE_1__ key; scalar_t__ needs_free_space; } ;
struct TYPE_4__ {struct btrfs_root* free_space_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BTRFS_FREE_SPACE_BITMAP_KEY ; 
 scalar_t__ BTRFS_FREE_SPACE_EXTENT_KEY ; 
 scalar_t__ BTRFS_FREE_SPACE_INFO_KEY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FREE_SPACE_TREE ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_trans_handle*,int) ; 
 struct btrfs_path* FUNC2 () ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*,struct btrfs_key*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_path*) ; 
 int FUNC8 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 

int FUNC9(struct btrfs_trans_handle *trans,
				  struct btrfs_block_group_cache *block_group)
{
	struct btrfs_root *root = trans->fs_info->free_space_root;
	struct btrfs_path *path;
	struct btrfs_key key, found_key;
	struct extent_buffer *leaf;
	u64 start, end;
	int done = 0, nr;
	int ret;

	if (!FUNC5(trans->fs_info, FREE_SPACE_TREE))
		return 0;

	if (block_group->needs_free_space) {
		/* We never added this block group to the free space tree. */
		return 0;
	}

	path = FUNC2();
	if (!path) {
		ret = -ENOMEM;
		goto out;
	}

	start = block_group->key.objectid;
	end = block_group->key.objectid + block_group->key.offset;

	key.objectid = end - 1;
	key.type = (u8)-1;
	key.offset = (u64)-1;

	while (!done) {
		ret = FUNC8(trans, root, &key, path, -1, 1);
		if (ret)
			goto out;

		leaf = path->nodes[0];
		nr = 0;
		path->slots[0]++;
		while (path->slots[0] > 0) {
			FUNC6(leaf, &found_key, path->slots[0] - 1);

			if (found_key.type == BTRFS_FREE_SPACE_INFO_KEY) {
				FUNC0(found_key.objectid == block_group->key.objectid);
				FUNC0(found_key.offset == block_group->key.offset);
				done = 1;
				nr++;
				path->slots[0]--;
				break;
			} else if (found_key.type == BTRFS_FREE_SPACE_EXTENT_KEY ||
				   found_key.type == BTRFS_FREE_SPACE_BITMAP_KEY) {
				FUNC0(found_key.objectid >= start);
				FUNC0(found_key.objectid < end);
				FUNC0(found_key.objectid + found_key.offset <= end);
				nr++;
				path->slots[0]--;
			} else {
				FUNC0(0);
			}
		}

		ret = FUNC3(trans, root, path, path->slots[0], nr);
		if (ret)
			goto out;
		FUNC7(path);
	}

	ret = 0;
out:
	FUNC4(path);
	if (ret)
		FUNC1(trans, ret);
	return ret;
}