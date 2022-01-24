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
typedef  scalar_t__ time64_t ;
struct btrfs_transaction {scalar_t__ state; scalar_t__ start_time; scalar_t__ transid; } ;
struct btrfs_trans_handle {scalar_t__ transid; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int commit_interval; int /*<<< orphan*/  fs_state; int /*<<< orphan*/  transaction_kthread_mutex; int /*<<< orphan*/  cleaner_kthread; int /*<<< orphan*/  trans_lock; int /*<<< orphan*/  flags; struct btrfs_transaction* running_transaction; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FS_NEED_ASYNC_COMMIT ; 
 int /*<<< orphan*/  BTRFS_FS_STATE_ERROR ; 
 int /*<<< orphan*/  ENOENT ; 
 int HZ ; 
 scalar_t__ FUNC0 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_trans_handle*) ; 
 scalar_t__ TRANS_STATE_BLOCKED ; 
 struct btrfs_trans_handle* FUNC2 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(void *arg)
{
	struct btrfs_root *root = arg;
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct btrfs_trans_handle *trans;
	struct btrfs_transaction *cur;
	u64 transid;
	time64_t now;
	unsigned long delay;
	bool cannot_commit;

	do {
		cannot_commit = false;
		delay = HZ * fs_info->commit_interval;
		FUNC9(&fs_info->transaction_kthread_mutex);

		FUNC12(&fs_info->trans_lock);
		cur = fs_info->running_transaction;
		if (!cur) {
			FUNC13(&fs_info->trans_lock);
			goto sleep;
		}

		now = FUNC8();
		if (cur->state < TRANS_STATE_BLOCKED &&
		    !FUNC14(BTRFS_FS_NEED_ASYNC_COMMIT, &fs_info->flags) &&
		    (now < cur->start_time ||
		     now - cur->start_time < fs_info->commit_interval)) {
			FUNC13(&fs_info->trans_lock);
			delay = HZ * 5;
			goto sleep;
		}
		transid = cur->transid;
		FUNC13(&fs_info->trans_lock);

		/* If the file system is aborted, this will always fail. */
		trans = FUNC2(root);
		if (FUNC0(trans)) {
			if (FUNC1(trans) != -ENOENT)
				cannot_commit = true;
			goto sleep;
		}
		if (transid == trans->transid) {
			FUNC4(trans);
		} else {
			FUNC5(trans);
		}
sleep:
		FUNC16(fs_info->cleaner_kthread);
		FUNC10(&fs_info->transaction_kthread_mutex);

		if (FUNC15(FUNC14(BTRFS_FS_STATE_ERROR,
				      &fs_info->fs_state)))
			FUNC3(fs_info);
		if (!FUNC7() &&
				(!FUNC6(fs_info) ||
				 cannot_commit))
			FUNC11(delay);
	} while (!FUNC7());
	return 0;
}