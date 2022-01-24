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
struct TYPE_2__ {int /*<<< orphan*/  replace_wait; int /*<<< orphan*/  bio_counter; } ;
struct btrfs_fs_info {int /*<<< orphan*/  fs_state; TYPE_1__ dev_replace; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_STATE_DEV_REPLACING ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void FUNC5(struct btrfs_fs_info *fs_info)
{
	while (1) {
		FUNC2(&fs_info->dev_replace.bio_counter);
		if (FUNC1(!FUNC3(BTRFS_FS_STATE_DEV_REPLACING,
				     &fs_info->fs_state)))
			break;

		FUNC0(fs_info);
		FUNC4(fs_info->dev_replace.replace_wait,
			   !FUNC3(BTRFS_FS_STATE_DEV_REPLACING,
				     &fs_info->fs_state));
	}
}