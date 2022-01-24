#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct inode {int /*<<< orphan*/  transid; TYPE_2__* transaction; int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/  d_parent; } ;
struct btrfs_trans_handle {int /*<<< orphan*/  transid; TYPE_2__* transaction; int /*<<< orphan*/  i_sb; } ;
struct btrfs_root_item {int dummy; } ;
struct btrfs_root {int /*<<< orphan*/  will_be_snapshotted; int /*<<< orphan*/  snapshot_force_cow; TYPE_1__* subv_writers; int /*<<< orphan*/  nr_swapfiles; int /*<<< orphan*/  state; } ;
struct btrfs_qgroup_inherit {int dummy; } ;
struct btrfs_pending_snapshot {int readonly; int error; int /*<<< orphan*/  path; struct btrfs_pending_snapshot* root_item; int /*<<< orphan*/  block_rsv; int /*<<< orphan*/  snap; int /*<<< orphan*/  list; struct btrfs_qgroup_inherit* inherit; struct inode* dir; struct btrfs_root* root; struct dentry* dentry; } ;
struct btrfs_fs_info {int /*<<< orphan*/  trans_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  root; } ;
struct TYPE_5__ {int /*<<< orphan*/  pending_snapshots; } ;
struct TYPE_4__ {int /*<<< orphan*/  counter; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_BLOCK_RSV_TEMP ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_ROOT_REF_COWS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ETXTBSY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  U64_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct inode* FUNC12 (int /*<<< orphan*/ ,struct dentry*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 struct btrfs_fs_info* FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct btrfs_root*) ; 
 struct inode* FUNC16 (struct btrfs_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct btrfs_fs_info*,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct btrfs_fs_info*,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (struct btrfs_pending_snapshot*) ; 
 void* FUNC24 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC33(struct btrfs_root *root, struct inode *dir,
			   struct dentry *dentry,
			   u64 *async_transid, bool readonly,
			   struct btrfs_qgroup_inherit *inherit)
{
	struct btrfs_fs_info *fs_info = FUNC14(dir->i_sb);
	struct inode *inode;
	struct btrfs_pending_snapshot *pending_snapshot;
	struct btrfs_trans_handle *trans;
	int ret;
	bool snapshot_force_cow = false;

	if (!FUNC30(BTRFS_ROOT_REF_COWS, &root->state))
		return -EINVAL;

	if (FUNC6(&root->nr_swapfiles)) {
		FUNC20(fs_info,
			   "cannot snapshot subvolume with active swapfile");
		return -ETXTBSY;
	}

	pending_snapshot = FUNC24(sizeof(*pending_snapshot), GFP_KERNEL);
	if (!pending_snapshot)
		return -ENOMEM;

	pending_snapshot->root_item = FUNC24(sizeof(struct btrfs_root_item),
			GFP_KERNEL);
	pending_snapshot->path = FUNC7();
	if (!pending_snapshot->root_item || !pending_snapshot->path) {
		ret = -ENOMEM;
		goto free_pending;
	}

	/*
	 * Force new buffered writes to reserve space even when NOCOW is
	 * possible. This is to avoid later writeback (running dealloc) to
	 * fallback to COW mode and unexpectedly fail with ENOSPC.
	 */
	FUNC5(&root->will_be_snapshotted);
	FUNC27();
	/* wait for no snapshot writes */
	FUNC31(root->subv_writers->wait,
		   FUNC26(&root->subv_writers->counter) == 0);

	ret = FUNC15(root);
	if (ret)
		goto dec_and_free;

	/*
	 * All previous writes have started writeback in NOCOW mode, so now
	 * we force future writes to fallback to COW mode during snapshot
	 * creation.
	 */
	FUNC5(&root->snapshot_force_cow);
	snapshot_force_cow = true;

	FUNC19(root, U64_MAX, 0, (u64)-1);

	FUNC11(&pending_snapshot->block_rsv,
			     BTRFS_BLOCK_RSV_TEMP);
	/*
	 * 1 - parent dir inode
	 * 2 - dir entries
	 * 1 - root item
	 * 2 - root ref/backref
	 * 1 - root of snapshot
	 * 1 - UUID item
	 */
	ret = FUNC18(FUNC0(dir)->root,
					&pending_snapshot->block_rsv, 8,
					false);
	if (ret)
		goto dec_and_free;

	pending_snapshot->dentry = dentry;
	pending_snapshot->root = root;
	pending_snapshot->readonly = readonly;
	pending_snapshot->dir = dir;
	pending_snapshot->inherit = inherit;

	trans = FUNC16(root, 0);
	if (FUNC1(trans)) {
		ret = FUNC2(trans);
		goto fail;
	}

	FUNC28(&fs_info->trans_lock);
	FUNC25(&pending_snapshot->list,
		 &trans->transaction->pending_snapshots);
	FUNC29(&fs_info->trans_lock);
	if (async_transid) {
		*async_transid = trans->transid;
		ret = FUNC9(trans, 1);
		if (ret)
			ret = FUNC8(trans);
	} else {
		ret = FUNC8(trans);
	}
	if (ret)
		goto fail;

	ret = pending_snapshot->error;
	if (ret)
		goto fail;

	ret = FUNC13(pending_snapshot->snap);
	if (ret)
		goto fail;

	inode = FUNC12(FUNC21(dentry->d_parent), dentry);
	if (FUNC1(inode)) {
		ret = FUNC2(inode);
		goto fail;
	}

	FUNC22(dentry, inode);
	ret = 0;
fail:
	FUNC17(fs_info, &pending_snapshot->block_rsv);
dec_and_free:
	if (snapshot_force_cow)
		FUNC3(&root->snapshot_force_cow);
	if (FUNC4(&root->will_be_snapshotted))
		FUNC32(&root->will_be_snapshotted);
free_pending:
	FUNC23(pending_snapshot->root_item);
	FUNC10(pending_snapshot->path);
	FUNC23(pending_snapshot);

	return ret;
}