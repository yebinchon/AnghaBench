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
typedef  int u64 ;
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {scalar_t__ start; scalar_t__ len; TYPE_2__* map_lookup; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct btrfs_fs_info {struct btrfs_root* extent_root; } ;
struct btrfs_block_group_item {int dummy; } ;
typedef  int /*<<< orphan*/  bg ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {struct extent_map_tree mapping_tree; } ;

/* Variables and functions */
 scalar_t__ BTRFS_BLOCK_GROUP_ITEM_KEY ; 
 int BTRFS_BLOCK_GROUP_TYPE_MASK ; 
 int ENOENT ; 
 int EUCLEAN ; 
 int FUNC0 (struct btrfs_block_group_item*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*,char*,scalar_t__,scalar_t__,...) ; 
 int FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,int) ; 
 int FUNC5 (struct btrfs_root*,struct btrfs_path*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_map*) ; 
 struct extent_map* FUNC8 (struct extent_map_tree*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,struct btrfs_block_group_item*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct btrfs_fs_info *fs_info,
				  struct btrfs_path *path,
				  struct btrfs_key *key)
{
	struct btrfs_root *root = fs_info->extent_root;
	int ret = 0;
	struct btrfs_key found_key;
	struct extent_buffer *leaf;
	struct btrfs_block_group_item bg;
	u64 flags;
	int slot;

	ret = FUNC6(NULL, root, key, path, 0, 0);
	if (ret < 0)
		goto out;

	while (1) {
		slot = path->slots[0];
		leaf = path->nodes[0];
		if (slot >= FUNC2(leaf)) {
			ret = FUNC5(root, path);
			if (ret == 0)
				continue;
			if (ret < 0)
				goto out;
			break;
		}
		FUNC3(leaf, &found_key, slot);

		if (found_key.objectid >= key->objectid &&
		    found_key.type == BTRFS_BLOCK_GROUP_ITEM_KEY) {
			struct extent_map_tree *em_tree;
			struct extent_map *em;

			em_tree = &root->fs_info->mapping_tree;
			FUNC10(&em_tree->lock);
			em = FUNC8(em_tree, found_key.objectid,
						   found_key.offset);
			FUNC11(&em_tree->lock);
			if (!em) {
				FUNC1(fs_info,
			"logical %llu len %llu found bg but no related chunk",
					  found_key.objectid, found_key.offset);
				ret = -ENOENT;
			} else if (em->start != found_key.objectid ||
				   em->len != found_key.offset) {
				FUNC1(fs_info,
		"block group %llu len %llu mismatch with chunk %llu len %llu",
					  found_key.objectid, found_key.offset,
					  em->start, em->len);
				ret = -EUCLEAN;
			} else {
				FUNC9(leaf, &bg,
					FUNC4(leaf, slot),
					sizeof(bg));
				flags = FUNC0(&bg) &
					BTRFS_BLOCK_GROUP_TYPE_MASK;

				if (flags != (em->map_lookup->type &
					      BTRFS_BLOCK_GROUP_TYPE_MASK)) {
					FUNC1(fs_info,
"block group %llu len %llu type flags 0x%llx mismatch with chunk type flags 0x%llx",
						found_key.objectid,
						found_key.offset, flags,
						(BTRFS_BLOCK_GROUP_TYPE_MASK &
						 em->map_lookup->type));
					ret = -EUCLEAN;
				} else {
					ret = 0;
				}
			}
			FUNC7(em);
			goto out;
		}
		path->slots[0]++;
	}
out:
	return ret;
}