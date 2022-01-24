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
struct btrfs_fs_info {int /*<<< orphan*/  scrub_workers_refcnt; int /*<<< orphan*/  scrub_pause_wait; int /*<<< orphan*/  scrub_cancel_req; int /*<<< orphan*/  scrubs_paused; int /*<<< orphan*/  scrub_pause_req; int /*<<< orphan*/  scrubs_running; int /*<<< orphan*/  scrub_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct btrfs_fs_info *fs_info)
{
	FUNC2(&fs_info->scrub_lock);
	FUNC0(&fs_info->scrubs_running, 0);
	FUNC0(&fs_info->scrub_pause_req, 0);
	FUNC0(&fs_info->scrubs_paused, 0);
	FUNC0(&fs_info->scrub_cancel_req, 0);
	FUNC1(&fs_info->scrub_pause_wait);
	FUNC3(&fs_info->scrub_workers_refcnt, 0);
}