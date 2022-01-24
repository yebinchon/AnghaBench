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
struct btrfs_free_space_ctl {int /*<<< orphan*/  tree_lock; } ;
struct btrfs_free_cluster {int /*<<< orphan*/  lock; struct btrfs_block_group_cache* block_group; } ;
struct btrfs_block_group_cache {struct btrfs_free_space_ctl* free_space_ctl; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_block_group_cache*,struct btrfs_free_cluster*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(
			       struct btrfs_block_group_cache *block_group,
			       struct btrfs_free_cluster *cluster)
{
	struct btrfs_free_space_ctl *ctl;
	int ret;

	/* first, get a safe pointer to the block group */
	FUNC3(&cluster->lock);
	if (!block_group) {
		block_group = cluster->block_group;
		if (!block_group) {
			FUNC4(&cluster->lock);
			return 0;
		}
	} else if (cluster->block_group != block_group) {
		/* someone else has already freed it don't redo their work */
		FUNC4(&cluster->lock);
		return 0;
	}
	FUNC1(&block_group->count);
	FUNC4(&cluster->lock);

	ctl = block_group->free_space_ctl;

	/* now return any extents the cluster had on it */
	FUNC3(&ctl->tree_lock);
	ret = FUNC0(block_group, cluster);
	FUNC4(&ctl->tree_lock);

	/* finally drop our ref */
	FUNC2(block_group);
	return ret;
}