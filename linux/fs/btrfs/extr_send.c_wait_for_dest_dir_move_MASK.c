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
typedef  scalar_t__ u64 ;
struct waiting_dir_move {int /*<<< orphan*/  orphanized; } ;
struct send_ctx {int /*<<< orphan*/  deleted_refs; int /*<<< orphan*/  new_refs; int /*<<< orphan*/  cur_inode_gen; int /*<<< orphan*/  cur_ino; TYPE_1__* send_root; TYPE_1__* parent_root; int /*<<< orphan*/  waiting_dir_moves; } ;
struct recorded_ref {int /*<<< orphan*/  name_len; int /*<<< orphan*/  name; int /*<<< orphan*/  dir; } ;
struct btrfs_path {int /*<<< orphan*/ * nodes; } ;
struct btrfs_key {scalar_t__ type; int /*<<< orphan*/  objectid; int /*<<< orphan*/  offset; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_dir_item {int dummy; } ;
struct TYPE_3__ {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 scalar_t__ BTRFS_DIR_ITEM_KEY ; 
 scalar_t__ BTRFS_INODE_ITEM_KEY ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct send_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const) ; 
 struct btrfs_path* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct btrfs_dir_item*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 struct btrfs_dir_item* FUNC5 (struct btrfs_fs_info*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,struct btrfs_key*,struct btrfs_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct waiting_dir_move* FUNC9 (struct send_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct send_ctx *sctx,
				  struct recorded_ref *parent_ref,
				  const bool is_orphan)
{
	struct btrfs_fs_info *fs_info = sctx->parent_root->fs_info;
	struct btrfs_path *path;
	struct btrfs_key key;
	struct btrfs_key di_key;
	struct btrfs_dir_item *di;
	u64 left_gen;
	u64 right_gen;
	int ret = 0;
	struct waiting_dir_move *wdm;

	if (FUNC0(&sctx->waiting_dir_moves))
		return 0;

	path = FUNC2();
	if (!path)
		return -ENOMEM;

	key.objectid = parent_ref->dir;
	key.type = BTRFS_DIR_ITEM_KEY;
	key.offset = FUNC6(parent_ref->name, parent_ref->name_len);

	ret = FUNC7(NULL, sctx->parent_root, &key, path, 0, 0);
	if (ret < 0) {
		goto out;
	} else if (ret > 0) {
		ret = 0;
		goto out;
	}

	di = FUNC5(fs_info, path, parent_ref->name,
				       parent_ref->name_len);
	if (!di) {
		ret = 0;
		goto out;
	}
	/*
	 * di_key.objectid has the number of the inode that has a dentry in the
	 * parent directory with the same name that sctx->cur_ino is being
	 * renamed to. We need to check if that inode is in the send root as
	 * well and if it is currently marked as an inode with a pending rename,
	 * if it is, we need to delay the rename of sctx->cur_ino as well, so
	 * that it happens after that other inode is renamed.
	 */
	FUNC3(path->nodes[0], di, &di_key);
	if (di_key.type != BTRFS_INODE_ITEM_KEY) {
		ret = 0;
		goto out;
	}

	ret = FUNC8(sctx->parent_root, di_key.objectid, NULL,
			     &left_gen, NULL, NULL, NULL, NULL);
	if (ret < 0)
		goto out;
	ret = FUNC8(sctx->send_root, di_key.objectid, NULL,
			     &right_gen, NULL, NULL, NULL, NULL);
	if (ret < 0) {
		if (ret == -ENOENT)
			ret = 0;
		goto out;
	}

	/* Different inode, no need to delay the rename of sctx->cur_ino */
	if (right_gen != left_gen) {
		ret = 0;
		goto out;
	}

	wdm = FUNC9(sctx, di_key.objectid);
	if (wdm && !wdm->orphanized) {
		ret = FUNC1(sctx,
					   sctx->cur_ino,
					   sctx->cur_inode_gen,
					   di_key.objectid,
					   &sctx->new_refs,
					   &sctx->deleted_refs,
					   is_orphan);
		if (!ret)
			ret = 1;
	}
out:
	FUNC4(path);
	return ret;
}