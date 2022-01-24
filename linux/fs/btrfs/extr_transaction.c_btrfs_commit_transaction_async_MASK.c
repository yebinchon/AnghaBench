#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct btrfs_transaction {int /*<<< orphan*/  use_count; } ;
struct btrfs_trans_handle {struct btrfs_transaction* transaction; int /*<<< orphan*/  root; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  sb; } ;
struct btrfs_async_commit {int /*<<< orphan*/  work; TYPE_2__* newtrans; } ;
struct TYPE_6__ {int type; } ;
struct TYPE_5__ {struct btrfs_trans_handle* journal_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  SB_FREEZE_FS ; 
 int __TRANS_FREEZABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_transaction*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  do_async_commit ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_async_commit*) ; 
 struct btrfs_async_commit* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_fs_info*,struct btrfs_transaction*) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_fs_info*,struct btrfs_transaction*) ; 

int FUNC13(struct btrfs_trans_handle *trans,
				   int wait_for_unblock)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	struct btrfs_async_commit *ac;
	struct btrfs_transaction *cur_trans;

	ac = FUNC8(sizeof(*ac), GFP_NOFS);
	if (!ac)
		return -ENOMEM;

	FUNC0(&ac->work, do_async_commit);
	ac->newtrans = FUNC5(trans->root);
	if (FUNC1(ac->newtrans)) {
		int err = FUNC2(ac->newtrans);
		FUNC7(ac);
		return err;
	}

	/* take transaction reference */
	cur_trans = trans->transaction;
	FUNC9(&cur_trans->use_count);

	FUNC4(trans);

	/*
	 * Tell lockdep we've released the freeze rwsem, since the
	 * async commit thread will be the one to unlock it.
	 */
	if (ac->newtrans->type & __TRANS_FREEZABLE)
		FUNC3(fs_info->sb, SB_FREEZE_FS);

	FUNC10(&ac->work);

	/* wait for transaction to start and unblock */
	if (wait_for_unblock)
		FUNC12(fs_info, cur_trans);
	else
		FUNC11(fs_info, cur_trans);

	if (current->journal_info == trans)
		current->journal_info = NULL;

	FUNC6(cur_trans);
	return 0;
}