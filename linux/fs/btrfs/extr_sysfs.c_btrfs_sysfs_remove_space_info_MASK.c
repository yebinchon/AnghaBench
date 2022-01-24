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
struct kobject {int dummy; } ;
struct btrfs_space_info {struct kobject kobj; struct kobject** block_group_kobjs; } ;

/* Variables and functions */
 int BTRFS_NR_RAID_TYPES ; 
 int /*<<< orphan*/  FUNC0 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC1 (struct kobject*) ; 

void FUNC2(struct btrfs_space_info *space_info)
{
	int i;

	for (i = 0; i < BTRFS_NR_RAID_TYPES; i++) {
		struct kobject *kobj;

		kobj = space_info->block_group_kobjs[i];
		space_info->block_group_kobjs[i] = NULL;
		if (kobj) {
			FUNC0(kobj);
			FUNC1(kobj);
		}
	}
	FUNC0(&space_info->kobj);
	FUNC1(&space_info->kobj);
}