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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {scalar_t__ log_start_pid; int log_transid; int /*<<< orphan*/  log_mutex; int /*<<< orphan*/ * log_ctxs; int /*<<< orphan*/  log_writers; int /*<<< orphan*/  log_batch; int /*<<< orphan*/  state; scalar_t__ log_root; struct btrfs_fs_info* fs_info; } ;
struct btrfs_log_ctx {int log_transid; int /*<<< orphan*/  list; } ;
struct btrfs_fs_info {int /*<<< orphan*/  tree_log_mutex; int /*<<< orphan*/  log_root_tree; } ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_ROOT_MULTI_LOG_TASKS ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 int FUNC2 (struct btrfs_trans_handle*,struct btrfs_fs_info*) ; 
 scalar_t__ FUNC3 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct btrfs_trans_handle *trans,
			   struct btrfs_root *root,
			   struct btrfs_log_ctx *ctx)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	int ret = 0;

	FUNC6(&root->log_mutex);

	if (root->log_root) {
		if (FUNC3(trans)) {
			ret = -EAGAIN;
			goto out;
		}

		if (!root->log_start_pid) {
			FUNC4(BTRFS_ROOT_MULTI_LOG_TASKS, &root->state);
			root->log_start_pid = current->pid;
		} else if (root->log_start_pid != current->pid) {
			FUNC8(BTRFS_ROOT_MULTI_LOG_TASKS, &root->state);
		}
	} else {
		FUNC6(&fs_info->tree_log_mutex);
		if (!fs_info->log_root_tree)
			ret = FUNC2(trans, fs_info);
		FUNC7(&fs_info->tree_log_mutex);
		if (ret)
			goto out;

		ret = FUNC1(trans, root);
		if (ret)
			goto out;

		FUNC4(BTRFS_ROOT_MULTI_LOG_TASKS, &root->state);
		root->log_start_pid = current->pid;
	}

	FUNC0(&root->log_batch);
	FUNC0(&root->log_writers);
	if (ctx) {
		int index = root->log_transid % 2;
		FUNC5(&ctx->list, &root->log_ctxs[index]);
		ctx->log_transid = root->log_transid;
	}

out:
	FUNC7(&root->log_mutex);
	return ret;
}