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
struct btrfs_space_info {int /*<<< orphan*/  groups_sem; int /*<<< orphan*/ * block_groups; } ;
struct btrfs_block_group_cache {int /*<<< orphan*/  list; int /*<<< orphan*/  flags; struct btrfs_space_info* space_info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct btrfs_block_group_cache *cache)
{
	struct btrfs_space_info *space_info = cache->space_info;
	int index = FUNC0(cache->flags);
	bool first = false;

	FUNC2(&space_info->groups_sem);
	if (FUNC4(&space_info->block_groups[index]))
		first = true;
	FUNC3(&cache->list, &space_info->block_groups[index]);
	FUNC5(&space_info->groups_sem);

	if (first)
		FUNC1(cache);
}