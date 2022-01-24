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
struct btrfs_space_info {int /*<<< orphan*/  groups_sem; } ;
struct btrfs_block_group_cache {int flags; int /*<<< orphan*/  reservations; int /*<<< orphan*/  ro; struct btrfs_space_info* space_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int BTRFS_BLOCK_GROUP_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

void FUNC5(struct btrfs_block_group_cache *bg)
{
	struct btrfs_space_info *space_info = bg->space_info;

	FUNC0(bg->ro);

	if (!(bg->flags & BTRFS_BLOCK_GROUP_DATA))
		return;

	/*
	 * Our block group is read only but before we set it to read only,
	 * some task might have had allocated an extent from it already, but it
	 * has not yet created a respective ordered extent (and added it to a
	 * root's list of ordered extents).
	 * Therefore wait for any task currently allocating extents, since the
	 * block group's reservations counter is incremented while a read lock
	 * on the groups' semaphore is held and decremented after releasing
	 * the read access on that semaphore and creating the ordered extent.
	 */
	FUNC2(&space_info->groups_sem);
	FUNC3(&space_info->groups_sem);

	FUNC4(&bg->reservations, !FUNC1(&bg->reservations));
}