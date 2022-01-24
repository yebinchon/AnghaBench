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
struct btrfs_transaction {int /*<<< orphan*/  writer_wait; int /*<<< orphan*/  num_writers; int /*<<< orphan*/  state; } ;
struct btrfs_trans_handle {int type; scalar_t__ aborted; int /*<<< orphan*/ * block_rsv; int /*<<< orphan*/ * orig_rsv; int /*<<< orphan*/  use_count; struct btrfs_transaction* transaction; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  transaction_kthread; int /*<<< orphan*/  fs_state; struct btrfs_transaction* running_transaction; int /*<<< orphan*/  sb; } ;
struct TYPE_2__ {struct btrfs_trans_handle* journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_STATE_ERROR ; 
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TRANS_JOIN_NOLOCK ; 
 scalar_t__ TRANS_STATE_BLOCKED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int __TRANS_FREEZABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_transaction*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  btrfs_trans_handle_cachep ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_transaction*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct btrfs_trans_handle *trans,
				   int throttle)
{
	struct btrfs_fs_info *info = trans->fs_info;
	struct btrfs_transaction *cur_trans = trans->transaction;
	int lock = (trans->type != TRANS_JOIN_NOLOCK);
	int err = 0;

	if (FUNC14(&trans->use_count) > 1) {
		FUNC13(&trans->use_count);
		trans->block_rsv = trans->orig_rsv;
		return 0;
	}

	FUNC9(trans);
	trans->block_rsv = NULL;

	FUNC5(trans);

	FUNC8(trans);

	if (lock && FUNC0(cur_trans->state) == TRANS_STATE_BLOCKED) {
		if (throttle)
			return FUNC4(trans);
		else
			FUNC17(info->transaction_kthread);
	}

	if (trans->type & __TRANS_FREEZABLE)
		FUNC15(info->sb);

	FUNC1(cur_trans != info->running_transaction);
	FUNC1(FUNC3(&cur_trans->num_writers) < 1);
	FUNC2(&cur_trans->num_writers);
	FUNC11(cur_trans, trans->type);

	FUNC10(&cur_trans->writer_wait);
	FUNC6(cur_trans);

	if (current->journal_info == trans)
		current->journal_info = NULL;

	if (throttle)
		FUNC7(info);

	if (trans->aborted ||
	    FUNC16(BTRFS_FS_STATE_ERROR, &info->fs_state)) {
		FUNC17(info->transaction_kthread);
		err = -EIO;
	}

	FUNC12(btrfs_trans_handle_cachep, trans);
	return err;
}