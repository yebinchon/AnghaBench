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
typedef  scalar_t__ u64 ;
struct btrfs_root_backup {int dummy; } ;
struct btrfs_fs_info {TYPE_1__* super_copy; } ;
struct TYPE_2__ {struct btrfs_root_backup* super_roots; } ;

/* Variables and functions */
 int BTRFS_NUM_BACKUP_ROOTS ; 
 scalar_t__ FUNC0 (struct btrfs_root_backup*) ; 

__attribute__((used)) static int FUNC1(struct btrfs_fs_info *info, u64 newest_gen)
{
	u64 cur;
	int newest_index = -1;
	struct btrfs_root_backup *root_backup;
	int i;

	for (i = 0; i < BTRFS_NUM_BACKUP_ROOTS; i++) {
		root_backup = info->super_copy->super_roots + i;
		cur = FUNC0(root_backup);
		if (cur == newest_gen)
			newest_index = i;
	}

	/* check to see if we actually wrapped around */
	if (newest_index == BTRFS_NUM_BACKUP_ROOTS - 1) {
		root_backup = info->super_copy->super_roots;
		cur = FUNC0(root_backup);
		if (cur == newest_gen)
			newest_index = 0;
	}
	return newest_index;
}