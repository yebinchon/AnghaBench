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
struct btrfs_free_cluster {struct btrfs_block_group_cache* block_group; int /*<<< orphan*/  refill_lock; } ;
struct btrfs_block_group_cache {int /*<<< orphan*/  data_rwsem; } ;

/* Variables and functions */
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct btrfs_block_group_cache *
FUNC7(struct btrfs_block_group_cache *block_group,
		   struct btrfs_free_cluster *cluster,
		   int delalloc)
{
	struct btrfs_block_group_cache *used_bg = NULL;

	FUNC4(&cluster->refill_lock);
	while (1) {
		used_bg = cluster->block_group;
		if (!used_bg)
			return NULL;

		if (used_bg == block_group)
			return used_bg;

		FUNC0(used_bg);

		if (!delalloc)
			return used_bg;

		if (FUNC3(&used_bg->data_rwsem))
			return used_bg;

		FUNC5(&cluster->refill_lock);

		/* We should only have one-level nested. */
		FUNC2(&used_bg->data_rwsem, SINGLE_DEPTH_NESTING);

		FUNC4(&cluster->refill_lock);
		if (used_bg == cluster->block_group)
			return used_bg;

		FUNC6(&used_bg->data_rwsem);
		FUNC1(used_bg);
	}
}