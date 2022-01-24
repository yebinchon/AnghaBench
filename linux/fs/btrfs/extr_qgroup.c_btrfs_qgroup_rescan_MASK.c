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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  qgroup_rescan_work; int /*<<< orphan*/  qgroup_rescan_workers; int /*<<< orphan*/  qgroup_flags; int /*<<< orphan*/  fs_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_QGROUP_STATUS_FLAG_RESCAN ; 
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
 int FUNC2 (struct btrfs_trans_handle*) ; 
 struct btrfs_trans_handle* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*) ; 

int
FUNC7(struct btrfs_fs_info *fs_info)
{
	int ret = 0;
	struct btrfs_trans_handle *trans;

	ret = FUNC5(fs_info, 0, 1);
	if (ret)
		return ret;

	/*
	 * We have set the rescan_progress to 0, which means no more
	 * delayed refs will be accounted by btrfs_qgroup_account_ref.
	 * However, btrfs_qgroup_account_ref may be right after its call
	 * to btrfs_find_all_roots, in which case it would still do the
	 * accounting.
	 * To solve this, we're committing the transaction, which will
	 * ensure we run all delayed refs and only after that, we are
	 * going to clear all tracking information for a clean start.
	 */

	trans = FUNC3(fs_info->fs_root);
	if (FUNC0(trans)) {
		fs_info->qgroup_flags &= ~BTRFS_QGROUP_STATUS_FLAG_RESCAN;
		return FUNC1(trans);
	}
	ret = FUNC2(trans);
	if (ret) {
		fs_info->qgroup_flags &= ~BTRFS_QGROUP_STATUS_FLAG_RESCAN;
		return ret;
	}

	FUNC6(fs_info);

	FUNC4(fs_info->qgroup_rescan_workers,
			 &fs_info->qgroup_rescan_work);

	return 0;
}