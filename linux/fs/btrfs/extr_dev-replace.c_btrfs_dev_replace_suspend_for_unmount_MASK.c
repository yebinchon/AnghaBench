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
struct btrfs_dev_replace {int replace_state; int item_needs_writeback; int /*<<< orphan*/  lock_finishing_cancel_unmount; int /*<<< orphan*/  rwsem; int /*<<< orphan*/  time_stopped; } ;
struct btrfs_fs_info {struct btrfs_dev_replace dev_replace; } ;

/* Variables and functions */
#define  BTRFS_IOCTL_DEV_REPLACE_STATE_CANCELED 132 
#define  BTRFS_IOCTL_DEV_REPLACE_STATE_FINISHED 131 
#define  BTRFS_IOCTL_DEV_REPLACE_STATE_NEVER_STARTED 130 
#define  BTRFS_IOCTL_DEV_REPLACE_STATE_STARTED 129 
#define  BTRFS_IOCTL_DEV_REPLACE_STATE_SUSPENDED 128 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct btrfs_fs_info *fs_info)
{
	struct btrfs_dev_replace *dev_replace = &fs_info->dev_replace;

	FUNC3(&dev_replace->lock_finishing_cancel_unmount);
	FUNC1(&dev_replace->rwsem);

	switch (dev_replace->replace_state) {
	case BTRFS_IOCTL_DEV_REPLACE_STATE_NEVER_STARTED:
	case BTRFS_IOCTL_DEV_REPLACE_STATE_FINISHED:
	case BTRFS_IOCTL_DEV_REPLACE_STATE_CANCELED:
	case BTRFS_IOCTL_DEV_REPLACE_STATE_SUSPENDED:
		break;
	case BTRFS_IOCTL_DEV_REPLACE_STATE_STARTED:
		dev_replace->replace_state =
			BTRFS_IOCTL_DEV_REPLACE_STATE_SUSPENDED;
		dev_replace->time_stopped = FUNC2();
		dev_replace->item_needs_writeback = 1;
		FUNC0(fs_info, "suspending dev_replace for unmount");
		break;
	}

	FUNC5(&dev_replace->rwsem);
	FUNC4(&dev_replace->lock_finishing_cancel_unmount);
}