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
typedef  scalar_t__ u64 ;
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {scalar_t__ start; scalar_t__ len; TYPE_1__* map_lookup; } ;
struct btrfs_fs_info {struct extent_map_tree mapping_tree; } ;
struct TYPE_4__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_block_group_cache {int flags; TYPE_2__ key; } ;
struct TYPE_3__ {int type; } ;

/* Variables and functions */
 int BTRFS_BLOCK_GROUP_TYPE_MASK ; 
 int EUCLEAN ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,char*,scalar_t__,scalar_t__,...) ; 
 struct btrfs_block_group_cache* FUNC1 (struct btrfs_fs_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_map*) ; 
 struct extent_map* FUNC4 (struct extent_map_tree*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct btrfs_fs_info *fs_info)
{
	struct extent_map_tree *map_tree = &fs_info->mapping_tree;
	struct extent_map *em;
	struct btrfs_block_group_cache *bg;
	u64 start = 0;
	int ret = 0;

	while (1) {
		FUNC5(&map_tree->lock);
		/*
		 * lookup_extent_mapping will return the first extent map
		 * intersecting the range, so setting @len to 1 is enough to
		 * get the first chunk.
		 */
		em = FUNC4(map_tree, start, 1);
		FUNC6(&map_tree->lock);
		if (!em)
			break;

		bg = FUNC1(fs_info, em->start);
		if (!bg) {
			FUNC0(fs_info,
	"chunk start=%llu len=%llu doesn't have corresponding block group",
				     em->start, em->len);
			ret = -EUCLEAN;
			FUNC3(em);
			break;
		}
		if (bg->key.objectid != em->start ||
		    bg->key.offset != em->len ||
		    (bg->flags & BTRFS_BLOCK_GROUP_TYPE_MASK) !=
		    (em->map_lookup->type & BTRFS_BLOCK_GROUP_TYPE_MASK)) {
			FUNC0(fs_info,
"chunk start=%llu len=%llu flags=0x%llx doesn't match block group start=%llu len=%llu flags=0x%llx",
				em->start, em->len,
				em->map_lookup->type & BTRFS_BLOCK_GROUP_TYPE_MASK,
				bg->key.objectid, bg->key.offset,
				bg->flags & BTRFS_BLOCK_GROUP_TYPE_MASK);
			ret = -EUCLEAN;
			FUNC3(em);
			FUNC2(bg);
			break;
		}
		start = em->start + em->len;
		FUNC3(em);
		FUNC2(bg);
	}
	return ret;
}