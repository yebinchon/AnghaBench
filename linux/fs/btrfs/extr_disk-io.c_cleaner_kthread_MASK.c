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
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  flags; int /*<<< orphan*/  cleaner_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_CLEANER_RUNNING ; 
 int /*<<< orphan*/  BTRFS_FS_OPEN ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*) ; 
 scalar_t__ FUNC3 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(void *arg)
{
	struct btrfs_root *root = arg;
	struct btrfs_fs_info *fs_info = root->fs_info;
	int again;

	while (1) {
		again = 0;

		FUNC13(BTRFS_FS_CLEANER_RUNNING, &fs_info->flags);

		/* Make the cleaner go to sleep early. */
		if (FUNC3(fs_info))
			goto sleep;

		/*
		 * Do not do anything if we might cause open_ctree() to block
		 * before we have finished mounting the filesystem.
		 */
		if (!FUNC15(BTRFS_FS_OPEN, &fs_info->flags))
			goto sleep;

		if (!FUNC10(&fs_info->cleaner_mutex))
			goto sleep;

		/*
		 * Avoid the problem that we change the status of the fs
		 * during the above check and trylock.
		 */
		if (FUNC3(fs_info)) {
			FUNC11(&fs_info->cleaner_mutex);
			goto sleep;
		}

		FUNC5(fs_info);

		again = FUNC1(root);
		FUNC11(&fs_info->cleaner_mutex);

		/*
		 * The defragger has dealt with the R/O remount and umount,
		 * needn't do anything special here.
		 */
		FUNC4(fs_info);

		/*
		 * Acquires fs_info->delete_unused_bgs_mutex to avoid racing
		 * with relocation (btrfs_relocate_chunk) and relocation
		 * acquires fs_info->cleaner_mutex (btrfs_relocate_block_group)
		 * after acquiring fs_info->delete_unused_bgs_mutex. So we
		 * can't hold, nor need to, fs_info->cleaner_mutex when deleting
		 * unused block groups.
		 */
		FUNC2(fs_info);
sleep:
		FUNC6(BTRFS_FS_CLEANER_RUNNING, &fs_info->flags);
		if (FUNC8())
			FUNC7();
		if (FUNC9())
			return 0;
		if (!again) {
			FUNC14(TASK_INTERRUPTIBLE);
			FUNC12();
			FUNC0(TASK_RUNNING);
		}
	}
}