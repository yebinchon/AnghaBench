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
struct TYPE_2__ {int /*<<< orphan*/  progress_1000; void* num_uncorrectable_read_errors; void* num_write_errors; int /*<<< orphan*/  time_stopped; int /*<<< orphan*/  time_started; int /*<<< orphan*/  replace_state; } ;
struct btrfs_ioctl_dev_replace_args {TYPE_1__ status; int /*<<< orphan*/  result; } ;
struct btrfs_dev_replace {int /*<<< orphan*/  rwsem; int /*<<< orphan*/  num_uncorrectable_read_errors; int /*<<< orphan*/  num_write_errors; int /*<<< orphan*/  time_stopped; int /*<<< orphan*/  time_started; int /*<<< orphan*/  replace_state; } ;
struct btrfs_fs_info {struct btrfs_dev_replace dev_replace; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct btrfs_fs_info *fs_info,
			      struct btrfs_ioctl_dev_replace_args *args)
{
	struct btrfs_dev_replace *dev_replace = &fs_info->dev_replace;

	FUNC2(&dev_replace->rwsem);
	/* even if !dev_replace_is_valid, the values are good enough for
	 * the replace_status ioctl */
	args->result = BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR;
	args->status.replace_state = dev_replace->replace_state;
	args->status.time_started = dev_replace->time_started;
	args->status.time_stopped = dev_replace->time_stopped;
	args->status.num_write_errors =
		FUNC0(&dev_replace->num_write_errors);
	args->status.num_uncorrectable_read_errors =
		FUNC0(&dev_replace->num_uncorrectable_read_errors);
	args->status.progress_1000 = FUNC1(fs_info);
	FUNC3(&dev_replace->rwsem);
}