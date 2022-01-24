#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root_item {int dummy; } ;
struct btrfs_root {int log_transid_committed; int log_transid; int last_log_commit; int /*<<< orphan*/ * log_commit_wait; int /*<<< orphan*/  log_mutex; int /*<<< orphan*/ * log_commit; TYPE_1__* node; int /*<<< orphan*/  dirty_log_pages; int /*<<< orphan*/  log_writer_wait; int /*<<< orphan*/  log_writers; int /*<<< orphan*/ * log_ctxs; int /*<<< orphan*/  log_batch; scalar_t__ log_start_pid; int /*<<< orphan*/  root_item; int /*<<< orphan*/  state; struct btrfs_root* log_root; struct btrfs_fs_info* fs_info; } ;
struct btrfs_log_ctx {int log_transid; int log_ret; int /*<<< orphan*/  list; } ;
struct btrfs_fs_info {int /*<<< orphan*/  super_for_commit; struct btrfs_root* log_root_tree; } ;
struct blk_plug {int dummy; } ;
typedef  int /*<<< orphan*/  new_root_item ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTRFS_ROOT_MULTI_LOG_TASKS ; 
 int EAGAIN ; 
 int ENOSPC ; 
 int EXTENT_DIRTY ; 
 int EXTENT_NEW ; 
 int /*<<< orphan*/  SSD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC6 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_trans_handle*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_log_ctx*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_root*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct btrfs_root*,int) ; 
 int FUNC18 (struct btrfs_fs_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct btrfs_root_item*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC29 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_root_item*) ; 
 int /*<<< orphan*/  FUNC30 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC31 (struct btrfs_root*,int) ; 
 int FUNC32 (struct btrfs_fs_info*,int) ; 

int FUNC33(struct btrfs_trans_handle *trans,
		   struct btrfs_root *root, struct btrfs_log_ctx *ctx)
{
	int index1;
	int index2;
	int mark;
	int ret;
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct btrfs_root *log = root->log_root;
	struct btrfs_root *log_root_tree = fs_info->log_root_tree;
	struct btrfs_root_item new_root_item;
	int log_transid = 0;
	struct btrfs_log_ctx root_log_ctx;
	struct blk_plug plug;

	FUNC25(&root->log_mutex);
	log_transid = ctx->log_transid;
	if (root->log_transid_committed >= log_transid) {
		FUNC26(&root->log_mutex);
		return ctx->log_ret;
	}

	index1 = log_transid % 2;
	if (FUNC3(&root->log_commit[index1])) {
		FUNC31(root, log_transid);
		FUNC26(&root->log_mutex);
		return ctx->log_ret;
	}
	FUNC0(log_transid == root->log_transid);
	FUNC4(&root->log_commit[index1], 1);

	/* wait for previous tree log sync to complete */
	if (FUNC3(&root->log_commit[(index1 + 1) % 2]))
		FUNC31(root, log_transid - 1);

	while (1) {
		int batch = FUNC3(&root->log_batch);
		/* when we're on an ssd, just kick the log commit out */
		if (!FUNC16(fs_info, SSD) &&
		    FUNC28(BTRFS_ROOT_MULTI_LOG_TASKS, &root->state)) {
			FUNC26(&root->log_mutex);
			FUNC27(1);
			FUNC25(&root->log_mutex);
		}
		FUNC30(root);
		if (batch == FUNC3(&root->log_batch))
			break;
	}

	/* bail out if we need to do a full commit */
	if (FUNC10(trans)) {
		ret = -EAGAIN;
		FUNC26(&root->log_mutex);
		goto out;
	}

	if (log_transid % 2 == 0)
		mark = EXTENT_DIRTY;
	else
		mark = EXTENT_NEW;

	/* we start IO on  all the marked extents here, but we don't actually
	 * wait for them until later.
	 */
	FUNC6(&plug);
	ret = FUNC18(fs_info, &log->dirty_log_pages, mark);
	if (ret) {
		FUNC5(&plug);
		FUNC7(trans, ret);
		FUNC12(trans);
		FUNC26(&root->log_mutex);
		goto out;
	}

	/*
	 * We _must_ update under the root->log_mutex in order to make sure we
	 * have a consistent view of the log root we are trying to commit at
	 * this moment.
	 *
	 * We _must_ copy this into a local copy, because we are not holding the
	 * log_root_tree->log_mutex yet.  This is important because when we
	 * commit the log_root_tree we must have a consistent view of the
	 * log_root_tree when we update the super block to point at the
	 * log_root_tree bytenr.  If we update the log_root_tree here we'll race
	 * with the commit and possibly point at the new block which we may not
	 * have written out.
	 */
	FUNC13(&log->root_item, log->node);
	FUNC24(&new_root_item, &log->root_item, sizeof(new_root_item));

	root->log_transid++;
	log->log_transid = root->log_transid;
	root->log_start_pid = 0;
	/*
	 * IO has been started, blocks of the log tree have WRITTEN flag set
	 * in their headers. new modifications of the log will be written to
	 * new positions. so it's safe to allow log writers to go in.
	 */
	FUNC26(&root->log_mutex);

	FUNC9(&root_log_ctx, NULL);

	FUNC25(&log_root_tree->log_mutex);
	FUNC2(&log_root_tree->log_batch);
	FUNC2(&log_root_tree->log_writers);

	index2 = log_root_tree->log_transid % 2;
	FUNC21(&root_log_ctx.list, &log_root_tree->log_ctxs[index2]);
	root_log_ctx.log_transid = log_root_tree->log_transid;

	FUNC26(&log_root_tree->log_mutex);

	FUNC25(&log_root_tree->log_mutex);

	/*
	 * Now we are safe to update the log_root_tree because we're under the
	 * log_mutex, and we're a current writer so we're holding the commit
	 * open until we drop the log_mutex.
	 */
	ret = FUNC29(trans, log, &new_root_item);

	if (FUNC1(&log_root_tree->log_writers)) {
		/* atomic_dec_and_test implies a barrier */
		FUNC20(&log_root_tree->log_writer_wait);
	}

	if (ret) {
		if (!FUNC23(&root_log_ctx.list))
			FUNC22(&root_log_ctx.list);

		FUNC5(&plug);
		FUNC12(trans);

		if (ret != -ENOSPC) {
			FUNC7(trans, ret);
			FUNC26(&log_root_tree->log_mutex);
			goto out;
		}
		FUNC17(log, mark);
		FUNC26(&log_root_tree->log_mutex);
		ret = -EAGAIN;
		goto out;
	}

	if (log_root_tree->log_transid_committed >= root_log_ctx.log_transid) {
		FUNC5(&plug);
		FUNC22(&root_log_ctx.list);
		FUNC26(&log_root_tree->log_mutex);
		ret = root_log_ctx.log_ret;
		goto out;
	}

	index2 = root_log_ctx.log_transid % 2;
	if (FUNC3(&log_root_tree->log_commit[index2])) {
		FUNC5(&plug);
		ret = FUNC17(log, mark);
		FUNC31(log_root_tree,
				root_log_ctx.log_transid);
		FUNC26(&log_root_tree->log_mutex);
		if (!ret)
			ret = root_log_ctx.log_ret;
		goto out;
	}
	FUNC0(root_log_ctx.log_transid == log_root_tree->log_transid);
	FUNC4(&log_root_tree->log_commit[index2], 1);

	if (FUNC3(&log_root_tree->log_commit[(index2 + 1) % 2])) {
		FUNC31(log_root_tree,
				root_log_ctx.log_transid - 1);
	}

	FUNC30(log_root_tree);

	/*
	 * now that we've moved on to the tree of log tree roots,
	 * check the full commit flag again
	 */
	if (FUNC10(trans)) {
		FUNC5(&plug);
		FUNC17(log, mark);
		FUNC26(&log_root_tree->log_mutex);
		ret = -EAGAIN;
		goto out_wake_log_root;
	}

	ret = FUNC18(fs_info,
					 &log_root_tree->dirty_log_pages,
					 EXTENT_DIRTY | EXTENT_NEW);
	FUNC5(&plug);
	if (ret) {
		FUNC12(trans);
		FUNC7(trans, ret);
		FUNC26(&log_root_tree->log_mutex);
		goto out_wake_log_root;
	}
	ret = FUNC17(log, mark);
	if (!ret)
		ret = FUNC17(log_root_tree,
						  EXTENT_NEW | EXTENT_DIRTY);
	if (ret) {
		FUNC12(trans);
		FUNC26(&log_root_tree->log_mutex);
		goto out_wake_log_root;
	}

	FUNC14(fs_info->super_for_commit,
				 log_root_tree->node->start);
	FUNC15(fs_info->super_for_commit,
				       FUNC8(log_root_tree->node));

	log_root_tree->log_transid++;
	FUNC26(&log_root_tree->log_mutex);

	/*
	 * Nobody else is going to jump in and write the ctree
	 * super here because the log_commit atomic below is protecting
	 * us.  We must be called with a transaction handle pinning
	 * the running transaction open, so a full commit can't hop
	 * in and cause problems either.
	 */
	ret = FUNC32(fs_info, 1);
	if (ret) {
		FUNC12(trans);
		FUNC7(trans, ret);
		goto out_wake_log_root;
	}

	FUNC25(&root->log_mutex);
	if (root->last_log_commit < log_transid)
		root->last_log_commit = log_transid;
	FUNC26(&root->log_mutex);

out_wake_log_root:
	FUNC25(&log_root_tree->log_mutex);
	FUNC11(log_root_tree, index2, ret);

	log_root_tree->log_transid_committed++;
	FUNC4(&log_root_tree->log_commit[index2], 0);
	FUNC26(&log_root_tree->log_mutex);

	/*
	 * The barrier before waitqueue_active (in cond_wake_up) is needed so
	 * all the updates above are seen by the woken threads. It might not be
	 * necessary, but proving that seems to be hard.
	 */
	FUNC19(&log_root_tree->log_commit_wait[index2]);
out:
	FUNC25(&root->log_mutex);
	FUNC11(root, index1, ret);
	root->log_transid_committed++;
	FUNC4(&root->log_commit[index1], 0);
	FUNC26(&root->log_mutex);

	/*
	 * The barrier before waitqueue_active (in cond_wake_up) is needed so
	 * all the updates above are seen by the woken threads. It might not be
	 * necessary, but proving that seems to be hard.
	 */
	FUNC19(&root->log_commit_wait[index1]);
	return ret;
}