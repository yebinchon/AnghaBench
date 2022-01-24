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
struct btrfs_fs_info {int /*<<< orphan*/  scrub_lock; int /*<<< orphan*/  scrub_cancel_req; int /*<<< orphan*/  scrubs_running; int /*<<< orphan*/  scrub_pause_wait; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

int FUNC6(struct btrfs_fs_info *fs_info)
{
	FUNC3(&fs_info->scrub_lock);
	if (!FUNC2(&fs_info->scrubs_running)) {
		FUNC4(&fs_info->scrub_lock);
		return -ENOTCONN;
	}

	FUNC1(&fs_info->scrub_cancel_req);
	while (FUNC2(&fs_info->scrubs_running)) {
		FUNC4(&fs_info->scrub_lock);
		FUNC5(fs_info->scrub_pause_wait,
			   FUNC2(&fs_info->scrubs_running) == 0);
		FUNC3(&fs_info->scrub_lock);
	}
	FUNC0(&fs_info->scrub_cancel_req);
	FUNC4(&fs_info->scrub_lock);

	return 0;
}