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
struct btrfs_fs_info {unsigned long mount_opt; int /*<<< orphan*/  fs_state; int /*<<< orphan*/  sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_DEFRAG ; 
 int /*<<< orphan*/  BTRFS_FS_STATE_REMOUNTING ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*) ; 
 scalar_t__ FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct btrfs_fs_info *fs_info,
					 unsigned long old_opts)
{
	/*
	 * We need to cleanup all defragable inodes if the autodefragment is
	 * close or the filesystem is read only.
	 */
	if (FUNC1(old_opts, AUTO_DEFRAG) &&
	    (!FUNC1(fs_info->mount_opt, AUTO_DEFRAG) || FUNC3(fs_info->sb))) {
		FUNC0(fs_info);
	}

	FUNC2(BTRFS_FS_STATE_REMOUNTING, &fs_info->fs_state);
}