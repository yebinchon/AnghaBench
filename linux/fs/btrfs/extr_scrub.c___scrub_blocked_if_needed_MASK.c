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
struct btrfs_fs_info {int /*<<< orphan*/  scrub_lock; int /*<<< orphan*/  scrub_pause_req; int /*<<< orphan*/  scrub_pause_wait; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct btrfs_fs_info *fs_info)
{
	while (FUNC0(&fs_info->scrub_pause_req)) {
		FUNC2(&fs_info->scrub_lock);
		FUNC3(fs_info->scrub_pause_wait,
		   FUNC0(&fs_info->scrub_pause_req) == 0);
		FUNC1(&fs_info->scrub_lock);
	}
}