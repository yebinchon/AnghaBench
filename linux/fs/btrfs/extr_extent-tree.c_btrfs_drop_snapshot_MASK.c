#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct walk_control {int* refs; int level; int shared_level; scalar_t__ stage; int update_ref; size_t drop_level; int /*<<< orphan*/  drop_progress; int /*<<< orphan*/  reada_count; scalar_t__ keep_locks; scalar_t__ restarted; int /*<<< orphan*/ * flags; int /*<<< orphan*/  update_progress; } ;
struct btrfs_trans_handle {struct btrfs_block_rsv* block_rsv; } ;
struct btrfs_root_item {int drop_level; int /*<<< orphan*/  drop_progress; } ;
struct TYPE_9__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {int /*<<< orphan*/  commit_root; int /*<<< orphan*/  node; int /*<<< orphan*/  state; TYPE_1__ root_key; struct btrfs_root_item root_item; struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int lowest_level; scalar_t__* slots; TYPE_2__** nodes; void** locks; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_fs_info {struct btrfs_root* tree_root; } ;
struct btrfs_block_rsv {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_MAX_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  BTRFS_ROOT_DEAD_TREE ; 
 int /*<<< orphan*/  BTRFS_ROOT_DELETING ; 
 int /*<<< orphan*/  BTRFS_ROOT_IN_RADIX ; 
 int /*<<< orphan*/  BTRFS_TREE_RELOC_OBJECTID ; 
 void* BTRFS_WRITE_LOCK_BLOCKING ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ DROP_REFERENCE ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC2 (struct btrfs_trans_handle*) ; 
 int FUNC3 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_trans_handle*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_trans_handle*,struct btrfs_root*) ; 
 struct btrfs_path* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_fs_info*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_trans_handle*,struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct btrfs_trans_handle*,TYPE_1__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct btrfs_key*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct btrfs_trans_handle*) ; 
 int FUNC16 (struct btrfs_root*,TYPE_1__*,struct btrfs_path*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC18 (struct btrfs_fs_info*,int,int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC20 (struct btrfs_root*) ; 
 int FUNC21 (struct btrfs_trans_handle*,struct btrfs_fs_info*,int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC25 (struct btrfs_path*) ; 
 int FUNC26 (struct btrfs_trans_handle*) ; 
 int FUNC27 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*) ; 
 scalar_t__ FUNC29 (struct btrfs_trans_handle*) ; 
 struct btrfs_trans_handle* FUNC30 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC33 (struct btrfs_path*,int /*<<< orphan*/ ) ; 
 int FUNC34 (struct btrfs_trans_handle*,struct btrfs_root*,TYPE_1__*,struct btrfs_root_item*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (struct walk_control*) ; 
 struct walk_control* FUNC37 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC41 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC42 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct walk_control*) ; 
 int FUNC43 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct walk_control*,int /*<<< orphan*/ ) ; 

int FUNC44(struct btrfs_root *root,
			 struct btrfs_block_rsv *block_rsv, int update_ref,
			 int for_reloc)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct btrfs_path *path;
	struct btrfs_trans_handle *trans;
	struct btrfs_root *tree_root = fs_info->tree_root;
	struct btrfs_root_item *root_item = &root->root_item;
	struct walk_control *wc;
	struct btrfs_key key;
	int err = 0;
	int ret;
	int level;
	bool root_dropped = false;

	FUNC10(fs_info, "Drop subvolume %llu", root->root_key.objectid);

	path = FUNC8();
	if (!path) {
		err = -ENOMEM;
		goto out;
	}

	wc = FUNC37(sizeof(*wc), GFP_NOFS);
	if (!wc) {
		FUNC17(path);
		err = -ENOMEM;
		goto out;
	}

	trans = FUNC30(tree_root, 0);
	if (FUNC2(trans)) {
		err = FUNC3(trans);
		goto out_free;
	}

	err = FUNC26(trans);
	if (err)
		goto out_end_trans;

	if (block_rsv)
		trans->block_rsv = block_rsv;

	/*
	 * This will help us catch people modifying the fs tree while we're
	 * dropping it.  It is unsafe to mess with the fs tree while it's being
	 * dropped as we unlock the root node and parent nodes as we walk down
	 * the tree, assuming nothing will change.  If something does change
	 * then we'll have stale information and drop references to blocks we've
	 * already dropped.
	 */
	FUNC40(BTRFS_ROOT_DELETING, &root->state);
	if (FUNC13(&root_item->drop_progress) == 0) {
		level = FUNC19(root->node);
		path->nodes[level] = FUNC20(root);
		FUNC28(path->nodes[level]);
		path->slots[level] = 0;
		path->locks[level] = BTRFS_WRITE_LOCK_BLOCKING;
		FUNC39(&wc->update_progress, 0,
		       sizeof(wc->update_progress));
	} else {
		FUNC14(&key, &root_item->drop_progress);
		FUNC38(&wc->update_progress, &key,
		       sizeof(wc->update_progress));

		level = root_item->drop_level;
		FUNC1(level == 0);
		path->lowest_level = level;
		ret = FUNC27(NULL, root, &key, path, 0, 0);
		path->lowest_level = 0;
		if (ret < 0) {
			err = ret;
			goto out_end_trans;
		}
		FUNC4(ret > 0);

		/*
		 * unlock our path, this is safe because only this
		 * function is allowed to delete this snapshot
		 */
		FUNC33(path, 0);

		level = FUNC19(root->node);
		while (1) {
			FUNC31(path->nodes[level]);
			FUNC28(path->nodes[level]);
			path->locks[level] = BTRFS_WRITE_LOCK_BLOCKING;

			ret = FUNC21(trans, fs_info,
						path->nodes[level]->start,
						level, 1, &wc->refs[level],
						&wc->flags[level]);
			if (ret < 0) {
				err = ret;
				goto out_end_trans;
			}
			FUNC1(wc->refs[level] == 0);

			if (level == root_item->drop_level)
				break;

			FUNC32(path->nodes[level]);
			path->locks[level] = 0;
			FUNC4(wc->refs[level] != 1);
			level--;
		}
	}

	wc->restarted = FUNC41(BTRFS_ROOT_DEAD_TREE, &root->state);
	wc->level = level;
	wc->shared_level = -1;
	wc->stage = DROP_REFERENCE;
	wc->update_ref = update_ref;
	wc->keep_locks = 0;
	wc->reada_count = FUNC0(fs_info);

	while (1) {

		ret = FUNC42(trans, root, path, wc);
		if (ret < 0) {
			err = ret;
			break;
		}

		ret = FUNC43(trans, root, path, wc, BTRFS_MAX_LEVEL);
		if (ret < 0) {
			err = ret;
			break;
		}

		if (ret > 0) {
			FUNC1(wc->stage != DROP_REFERENCE);
			break;
		}

		if (wc->stage == DROP_REFERENCE) {
			wc->drop_level = wc->level;
			FUNC23(path->nodes[wc->drop_level],
					      &wc->drop_progress,
					      path->slots[wc->drop_level]);
		}
		FUNC9(&root_item->drop_progress,
				      &wc->drop_progress);
		root_item->drop_level = wc->drop_level;

		FUNC1(wc->level == 0);
		if (FUNC29(trans) ||
		    (!for_reloc && FUNC22(fs_info))) {
			ret = FUNC34(trans, tree_root,
						&root->root_key,
						root_item);
			if (ret) {
				FUNC5(trans, ret);
				err = ret;
				goto out_end_trans;
			}

			FUNC15(trans);
			if (!for_reloc && FUNC22(fs_info)) {
				FUNC10(fs_info,
					    "drop snapshot early exit");
				err = -EAGAIN;
				goto out_free;
			}

			trans = FUNC30(tree_root, 0);
			if (FUNC2(trans)) {
				err = FUNC3(trans);
				goto out_free;
			}
			if (block_rsv)
				trans->block_rsv = block_rsv;
		}
	}
	FUNC25(path);
	if (err)
		goto out_end_trans;

	ret = FUNC12(trans, &root->root_key);
	if (ret) {
		FUNC5(trans, ret);
		err = ret;
		goto out_end_trans;
	}

	if (root->root_key.objectid != BTRFS_TREE_RELOC_OBJECTID) {
		ret = FUNC16(tree_root, &root->root_key, path,
				      NULL, NULL);
		if (ret < 0) {
			FUNC5(trans, ret);
			err = ret;
			goto out_end_trans;
		} else if (ret > 0) {
			/* if we fail to delete the orphan item this time
			 * around, it'll get picked up the next time.
			 *
			 * The most common failure here is just -ENOENT.
			 */
			FUNC11(trans, tree_root,
					      root->root_key.objectid);
		}
	}

	if (FUNC41(BTRFS_ROOT_IN_RADIX, &root->state)) {
		FUNC7(trans, root);
	} else {
		FUNC35(root->node);
		FUNC35(root->commit_root);
		FUNC24(root);
	}
	root_dropped = true;
out_end_trans:
	FUNC15(trans);
out_free:
	FUNC36(wc);
	FUNC17(path);
out:
	/*
	 * So if we need to stop dropping the snapshot for whatever reason we
	 * need to make sure to add it back to the dead root list so that we
	 * keep trying to do the work later.  This also cleans up roots if we
	 * don't have it in the radix (like when we recover after a power fail
	 * or unmount) so we don't leak memory.
	 */
	if (!for_reloc && !root_dropped)
		FUNC6(root);
	if (err && err != -EAGAIN)
		FUNC18(fs_info, err, NULL);
	return err;
}