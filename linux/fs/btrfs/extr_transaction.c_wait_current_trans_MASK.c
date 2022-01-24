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
struct btrfs_transaction {scalar_t__ state; scalar_t__ aborted; int /*<<< orphan*/  use_count; } ;
struct btrfs_fs_info {int /*<<< orphan*/  trans_lock; int /*<<< orphan*/  transaction_wait; struct btrfs_transaction* running_transaction; } ;

/* Variables and functions */
 scalar_t__ TRANS_STATE_UNBLOCKED ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_transaction*) ; 
 scalar_t__ FUNC1 (struct btrfs_transaction*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct btrfs_fs_info *fs_info)
{
	struct btrfs_transaction *cur_trans;

	FUNC3(&fs_info->trans_lock);
	cur_trans = fs_info->running_transaction;
	if (cur_trans && FUNC1(cur_trans)) {
		FUNC2(&cur_trans->use_count);
		FUNC4(&fs_info->trans_lock);

		FUNC5(fs_info->transaction_wait,
			   cur_trans->state >= TRANS_STATE_UNBLOCKED ||
			   cur_trans->aborted);
		FUNC0(cur_trans);
	} else {
		FUNC4(&fs_info->trans_lock);
	}
}