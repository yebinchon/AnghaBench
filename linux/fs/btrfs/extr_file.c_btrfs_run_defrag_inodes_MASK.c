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
typedef  scalar_t__ u64 ;
struct inode_defrag {scalar_t__ root; scalar_t__ ino; } ;
struct btrfs_fs_info {int /*<<< orphan*/  transaction_wait; int /*<<< orphan*/  defrag_running; int /*<<< orphan*/  fs_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_STATE_REMOUNTING ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,struct inode_defrag*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct inode_defrag* FUNC4 (struct btrfs_fs_info*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct btrfs_fs_info *fs_info)
{
	struct inode_defrag *defrag;
	u64 first_ino = 0;
	u64 root_objectid = 0;

	FUNC3(&fs_info->defrag_running);
	while (1) {
		/* Pause the auto defragger. */
		if (FUNC5(BTRFS_FS_STATE_REMOUNTING,
			     &fs_info->fs_state))
			break;

		if (!FUNC1(fs_info))
			break;

		/* find an inode to defrag */
		defrag = FUNC4(fs_info, root_objectid,
						 first_ino);
		if (!defrag) {
			if (root_objectid || first_ino) {
				root_objectid = 0;
				first_ino = 0;
				continue;
			} else {
				break;
			}
		}

		first_ino = defrag->ino + 1;
		root_objectid = defrag->root;

		FUNC0(fs_info, defrag);
	}
	FUNC2(&fs_info->defrag_running);

	/*
	 * during unmount, we use the transaction_wait queue to
	 * wait for the defragger to stop
	 */
	FUNC6(&fs_info->transaction_wait);
	return 0;
}