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
struct TYPE_2__ {int /*<<< orphan*/  bio_counter; int /*<<< orphan*/  replace_wait; } ;
struct btrfs_fs_info {TYPE_1__ dev_replace; int /*<<< orphan*/  fs_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_STATE_DEV_REPLACING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct btrfs_fs_info *fs_info)
{
	FUNC1(BTRFS_FS_STATE_DEV_REPLACING, &fs_info->fs_state);
	FUNC2(fs_info->dev_replace.replace_wait, !FUNC0(
		   &fs_info->dev_replace.bio_counter));
}