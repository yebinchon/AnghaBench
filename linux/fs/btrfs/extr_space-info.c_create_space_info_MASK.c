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
typedef  int u64 ;
struct btrfs_space_info {int flags; int /*<<< orphan*/  list; int /*<<< orphan*/  priority_tickets; int /*<<< orphan*/  tickets; int /*<<< orphan*/  ro_bgs; int /*<<< orphan*/  wait; int /*<<< orphan*/  force_alloc; int /*<<< orphan*/  lock; int /*<<< orphan*/  groups_sem; int /*<<< orphan*/ * block_groups; int /*<<< orphan*/  total_bytes_pinned; } ;
struct btrfs_fs_info {struct btrfs_space_info* data_sinfo; int /*<<< orphan*/  space_info; } ;

/* Variables and functions */
 int BTRFS_BLOCK_GROUP_DATA ; 
 int BTRFS_BLOCK_GROUP_TYPE_MASK ; 
 int BTRFS_NR_RAID_TYPES ; 
 int /*<<< orphan*/  CHUNK_ALLOC_NO_FORCE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct btrfs_fs_info*,struct btrfs_space_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_space_info*) ; 
 struct btrfs_space_info* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct btrfs_fs_info *info, u64 flags)
{

	struct btrfs_space_info *space_info;
	int i;
	int ret;

	space_info = FUNC5(sizeof(*space_info), GFP_NOFS);
	if (!space_info)
		return -ENOMEM;

	ret = FUNC7(&space_info->total_bytes_pinned, 0,
				 GFP_KERNEL);
	if (ret) {
		FUNC4(space_info);
		return ret;
	}

	for (i = 0; i < BTRFS_NR_RAID_TYPES; i++)
		FUNC0(&space_info->block_groups[i]);
	FUNC2(&space_info->groups_sem);
	FUNC8(&space_info->lock);
	space_info->flags = flags & BTRFS_BLOCK_GROUP_TYPE_MASK;
	space_info->force_alloc = CHUNK_ALLOC_NO_FORCE;
	FUNC3(&space_info->wait);
	FUNC0(&space_info->ro_bgs);
	FUNC0(&space_info->tickets);
	FUNC0(&space_info->priority_tickets);

	ret = FUNC1(info, space_info);
	if (ret)
		return ret;

	FUNC6(&space_info->list, &info->space_info);
	if (flags & BTRFS_BLOCK_GROUP_DATA)
		info->data_sinfo = space_info;

	return ret;
}