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
struct btrfs_transaction {int /*<<< orphan*/  num_writers; int /*<<< orphan*/  writer_wait; int /*<<< orphan*/  state; int /*<<< orphan*/  list; } ;
struct btrfs_trans_handle {int type; int /*<<< orphan*/  root; struct btrfs_transaction* transaction; int /*<<< orphan*/  use_count; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  sb; int /*<<< orphan*/  trans_lock; struct btrfs_transaction* running_transaction; } ;
struct TYPE_2__ {struct btrfs_trans_handle* journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANS_STATE_COMMIT_DOING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int __TRANS_FREEZABLE ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_trans_handle*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_transaction*,struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_transaction*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  btrfs_trans_handle_cachep ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC16(struct btrfs_trans_handle *trans, int err)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	struct btrfs_transaction *cur_trans = trans->transaction;

	FUNC1(FUNC10(&trans->use_count) > 1);

	FUNC3(trans, err);

	FUNC12(&fs_info->trans_lock);

	/*
	 * If the transaction is removed from the list, it means this
	 * transaction has been committed successfully, so it is impossible
	 * to call the cleanup function.
	 */
	FUNC0(FUNC9(&cur_trans->list));

	FUNC8(&cur_trans->list);
	if (cur_trans == fs_info->running_transaction) {
		cur_trans->state = TRANS_STATE_COMMIT_DOING;
		FUNC13(&fs_info->trans_lock);
		FUNC15(cur_trans->writer_wait,
			   FUNC2(&cur_trans->num_writers) == 1);

		FUNC12(&fs_info->trans_lock);
	}
	FUNC13(&fs_info->trans_lock);

	FUNC4(trans->transaction, fs_info);

	FUNC12(&fs_info->trans_lock);
	if (cur_trans == fs_info->running_transaction)
		fs_info->running_transaction = NULL;
	FUNC13(&fs_info->trans_lock);

	if (trans->type & __TRANS_FREEZABLE)
		FUNC11(fs_info->sb);
	FUNC5(cur_trans);
	FUNC5(cur_trans);

	FUNC14(trans->root);

	if (current->journal_info == trans)
		current->journal_info = NULL;
	FUNC6(fs_info);

	FUNC7(btrfs_trans_handle_cachep, trans);
}