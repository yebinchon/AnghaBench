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
struct btrfs_fs_info {int qgroup_rescan_running; int /*<<< orphan*/  qgroup_rescan_completion; int /*<<< orphan*/  qgroup_rescan_lock; int /*<<< orphan*/  qgroup_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct btrfs_fs_info *fs_info,
				     bool interruptible)
{
	int running;
	int ret = 0;

	FUNC0(&fs_info->qgroup_rescan_lock);
	FUNC2(&fs_info->qgroup_lock);
	running = fs_info->qgroup_rescan_running;
	FUNC3(&fs_info->qgroup_lock);
	FUNC1(&fs_info->qgroup_rescan_lock);

	if (!running)
		return 0;

	if (interruptible)
		ret = FUNC5(
					&fs_info->qgroup_rescan_completion);
	else
		FUNC4(&fs_info->qgroup_rescan_completion);

	return ret;
}