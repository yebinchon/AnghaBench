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
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  chunk_mutex; struct extent_map_tree mapping_tree; } ;
struct TYPE_2__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_block_group_cache {int /*<<< orphan*/  free_space_ctl; TYPE_1__ key; int /*<<< orphan*/  lock; scalar_t__ removed; int /*<<< orphan*/  trimming; struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_map*) ; 
 struct extent_map* FUNC4 (struct extent_map_tree*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_map_tree*,struct extent_map*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct btrfs_block_group_cache *block_group)
{
	struct btrfs_fs_info *fs_info = block_group->fs_info;
	struct extent_map_tree *em_tree;
	struct extent_map *em;
	bool cleanup;

	FUNC8(&block_group->lock);
	cleanup = (FUNC2(&block_group->trimming) &&
		   block_group->removed);
	FUNC9(&block_group->lock);

	if (cleanup) {
		FUNC5(&fs_info->chunk_mutex);
		em_tree = &fs_info->mapping_tree;
		FUNC10(&em_tree->lock);
		em = FUNC4(em_tree, block_group->key.objectid,
					   1);
		FUNC0(!em); /* logic error, can't happen */
		FUNC7(em_tree, em);
		FUNC11(&em_tree->lock);
		FUNC6(&fs_info->chunk_mutex);

		/* once for us and once for the tree */
		FUNC3(em);
		FUNC3(em);

		/*
		 * We've left one free space entry and other tasks trimming
		 * this block group have left 1 entry each one. Free them.
		 */
		FUNC1(block_group->free_space_ctl);
	}
}