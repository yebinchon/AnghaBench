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
struct btrfs_transaction {scalar_t__ state; } ;
struct btrfs_fs_info {int /*<<< orphan*/  trans_lock; struct btrfs_transaction* running_transaction; } ;

/* Variables and functions */
 scalar_t__ TRANS_STATE_COMMIT_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct btrfs_fs_info *info)
{
	struct btrfs_transaction *trans;
	int ret = 0;

	FUNC0(&info->trans_lock);
	trans = info->running_transaction;
	if (trans)
		ret = (trans->state >= TRANS_STATE_COMMIT_START);
	FUNC1(&info->trans_lock);
	return ret;
}