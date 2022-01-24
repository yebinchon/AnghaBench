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
struct btrfs_raid_bio {int /*<<< orphan*/  work; TYPE_1__* fs_info; } ;
typedef  int /*<<< orphan*/  btrfs_func_t ;
struct TYPE_2__ {int /*<<< orphan*/  rmw_workers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btrfs_rmw_helper ; 

__attribute__((used)) static void FUNC2(struct btrfs_raid_bio *rbio, btrfs_func_t work_func)
{
	FUNC0(&rbio->work, btrfs_rmw_helper, work_func, NULL, NULL);
	FUNC1(rbio->fs_info->rmw_workers, &rbio->work);
}