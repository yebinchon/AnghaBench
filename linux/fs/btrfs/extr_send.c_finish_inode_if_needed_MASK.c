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
typedef  scalar_t__ u64 ;
struct send_ctx {scalar_t__ send_progress; scalar_t__ cur_ino; scalar_t__ cur_inode_next_write_offset; scalar_t__ cur_inode_size; scalar_t__ cur_inode_last_extent; int /*<<< orphan*/  cur_inode_gen; int /*<<< orphan*/  cur_inode_mode; int /*<<< orphan*/  parent_root; scalar_t__ cur_inode_new; int /*<<< orphan*/  send_root; TYPE_1__* cmp_key; scalar_t__ cur_inode_deleted; scalar_t__ ignore_cur_inode; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct send_ctx*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct send_ctx*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct send_ctx*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct send_ctx*) ; 
 int FUNC7 (struct send_ctx*,int,int*,int*) ; 
 int FUNC8 (struct send_ctx*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (struct send_ctx*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC10 (struct send_ctx*,scalar_t__) ; 
 int FUNC11 (struct send_ctx*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC12 (struct send_ctx*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct send_ctx *sctx, int at_end)
{
	int ret = 0;
	u64 left_mode;
	u64 left_uid;
	u64 left_gid;
	u64 right_mode;
	u64 right_uid;
	u64 right_gid;
	int need_chmod = 0;
	int need_chown = 0;
	int need_truncate = 1;
	int pending_move = 0;
	int refs_processed = 0;

	if (sctx->ignore_cur_inode)
		return 0;

	ret = FUNC7(sctx, at_end, &pending_move,
					      &refs_processed);
	if (ret < 0)
		goto out;

	/*
	 * We have processed the refs and thus need to advance send_progress.
	 * Now, calls to get_cur_xxx will take the updated refs of the current
	 * inode into account.
	 *
	 * On the other hand, if our current inode is a directory and couldn't
	 * be moved/renamed because its parent was renamed/moved too and it has
	 * a higher inode number, we can only move/rename our current inode
	 * after we moved/renamed its parent. Therefore in this case operate on
	 * the old path (pre move/rename) of our current inode, and the
	 * move/rename will be performed later.
	 */
	if (refs_processed && !pending_move)
		sctx->send_progress = sctx->cur_ino + 1;

	if (sctx->cur_ino == 0 || sctx->cur_inode_deleted)
		goto out;
	if (!at_end && sctx->cmp_key->objectid == sctx->cur_ino)
		goto out;

	ret = FUNC3(sctx->send_root, sctx->cur_ino, NULL, NULL,
			&left_mode, &left_uid, &left_gid, NULL);
	if (ret < 0)
		goto out;

	if (!sctx->parent_root || sctx->cur_inode_new) {
		need_chown = 1;
		if (!FUNC0(sctx->cur_inode_mode))
			need_chmod = 1;
		if (sctx->cur_inode_next_write_offset == sctx->cur_inode_size)
			need_truncate = 0;
	} else {
		u64 old_size;

		ret = FUNC3(sctx->parent_root, sctx->cur_ino,
				&old_size, NULL, &right_mode, &right_uid,
				&right_gid, NULL);
		if (ret < 0)
			goto out;

		if (left_uid != right_uid || left_gid != right_gid)
			need_chown = 1;
		if (!FUNC0(sctx->cur_inode_mode) && left_mode != right_mode)
			need_chmod = 1;
		if ((old_size == sctx->cur_inode_size) ||
		    (sctx->cur_inode_size > old_size &&
		     sctx->cur_inode_next_write_offset == sctx->cur_inode_size))
			need_truncate = 0;
	}

	if (FUNC1(sctx->cur_inode_mode)) {
		if (FUNC6(sctx)) {
			if (sctx->cur_inode_last_extent == (u64)-1 ||
			    sctx->cur_inode_last_extent <
			    sctx->cur_inode_size) {
				ret = FUNC4(sctx, (u64)-1);
				if (ret)
					goto out;
			}
			if (sctx->cur_inode_last_extent <
			    sctx->cur_inode_size) {
				ret = FUNC10(sctx, sctx->cur_inode_size);
				if (ret)
					goto out;
			}
		}
		if (need_truncate) {
			ret = FUNC11(sctx, sctx->cur_ino,
					    sctx->cur_inode_gen,
					    sctx->cur_inode_size);
			if (ret < 0)
				goto out;
		}
	}

	if (need_chown) {
		ret = FUNC9(sctx, sctx->cur_ino, sctx->cur_inode_gen,
				left_uid, left_gid);
		if (ret < 0)
			goto out;
	}
	if (need_chmod) {
		ret = FUNC8(sctx, sctx->cur_ino, sctx->cur_inode_gen,
				left_mode);
		if (ret < 0)
			goto out;
	}

	/*
	 * If other directory inodes depended on our current directory
	 * inode's move/rename, now do their move/rename operations.
	 */
	if (!FUNC5(sctx, sctx->cur_ino)) {
		ret = FUNC2(sctx);
		if (ret)
			goto out;
		/*
		 * Need to send that every time, no matter if it actually
		 * changed between the two trees as we have done changes to
		 * the inode before. If our inode is a directory and it's
		 * waiting to be moved/renamed, we will send its utimes when
		 * it's moved/renamed, therefore we don't need to do it here.
		 */
		sctx->send_progress = sctx->cur_ino + 1;
		ret = FUNC12(sctx, sctx->cur_ino, sctx->cur_inode_gen);
		if (ret < 0)
			goto out;
	}

out:
	return ret;
}