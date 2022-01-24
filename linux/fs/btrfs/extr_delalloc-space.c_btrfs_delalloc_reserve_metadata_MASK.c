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
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_block_rsv {int /*<<< orphan*/  lock; int /*<<< orphan*/  qgroup_rsv_reserved; } ;
struct btrfs_inode {int /*<<< orphan*/  delalloc_mutex; int /*<<< orphan*/  lock; scalar_t__ csum_bytes; struct btrfs_block_rsv block_rsv; struct btrfs_root* root; } ;
struct btrfs_fs_info {int /*<<< orphan*/  sectorsize; } ;
typedef  enum btrfs_reserve_flush_enum { ____Placeholder_btrfs_reserve_flush_enum } btrfs_reserve_flush_enum ;
struct TYPE_2__ {scalar_t__ journal_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int BTRFS_RESERVE_FLUSH_ALL ; 
 int BTRFS_RESERVE_FLUSH_LIMIT ; 
 int BTRFS_RESERVE_NO_FLUSH ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_block_rsv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,struct btrfs_inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_inode*) ; 
 scalar_t__ FUNC4 (struct btrfs_inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_root*,scalar_t__) ; 
 int FUNC7 (struct btrfs_root*,scalar_t__,int) ; 
 int FUNC8 (struct btrfs_root*,struct btrfs_block_rsv*,scalar_t__,int) ; 
 scalar_t__ FUNC9 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_fs_info*,scalar_t__,scalar_t__*,scalar_t__*) ; 
 unsigned int FUNC11 (scalar_t__) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,scalar_t__,int) ; 

int FUNC18(struct btrfs_inode *inode, u64 num_bytes)
{
	struct btrfs_root *root = inode->root;
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct btrfs_block_rsv *block_rsv = &inode->block_rsv;
	u64 meta_reserve, qgroup_reserve;
	unsigned nr_extents;
	enum btrfs_reserve_flush_enum flush = BTRFS_RESERVE_FLUSH_ALL;
	int ret = 0;
	bool delalloc_lock = true;

	/*
	 * If we are a free space inode we need to not flush since we will be in
	 * the middle of a transaction commit.  We also don't need the delalloc
	 * mutex since we won't race with anybody.  We need this mostly to make
	 * lockdep shut its filthy mouth.
	 *
	 * If we have a transaction open (can happen if we call truncate_block
	 * from truncate), then we need FLUSH_LIMIT so we don't deadlock.
	 */
	if (FUNC4(inode)) {
		flush = BTRFS_RESERVE_NO_FLUSH;
		delalloc_lock = false;
	} else {
		if (current->journal_info)
			flush = BTRFS_RESERVE_FLUSH_LIMIT;

		if (FUNC9(fs_info))
			FUNC14(1);
	}

	if (delalloc_lock)
		FUNC12(&inode->delalloc_mutex);

	num_bytes = FUNC0(num_bytes, fs_info->sectorsize);

	/*
	 * We always want to do it this way, every other way is wrong and ends
	 * in tears.  Pre-reserving the amount we are going to add will always
	 * be the right way, because otherwise if we have enough parallelism we
	 * could end up with thousands of inodes all holding little bits of
	 * reservations they were able to make previously and the only way to
	 * reclaim that space is to ENOSPC out the operations and clear
	 * everything out and try again, which is bad.  This way we just
	 * over-reserve slightly, and clean up the mess when we are done.
	 */
	FUNC10(fs_info, num_bytes, &meta_reserve,
				&qgroup_reserve);
	ret = FUNC7(root, qgroup_reserve, true);
	if (ret)
		goto out_fail;
	ret = FUNC8(root, block_rsv, meta_reserve, flush);
	if (ret)
		goto out_qgroup;

	/*
	 * Now we need to update our outstanding extents and csum bytes _first_
	 * and then add the reservation to the block_rsv.  This keeps us from
	 * racing with an ordered completion or some such that would think it
	 * needs to free the reservation we just made.
	 */
	FUNC15(&inode->lock);
	nr_extents = FUNC11(num_bytes);
	FUNC5(inode, nr_extents);
	inode->csum_bytes += num_bytes;
	FUNC2(fs_info, inode);
	FUNC16(&inode->lock);

	/* Now we can safely add our space to our block rsv */
	FUNC1(block_rsv, meta_reserve, false);
	FUNC17(root->fs_info, "delalloc",
				      FUNC3(inode), meta_reserve, 1);

	FUNC15(&block_rsv->lock);
	block_rsv->qgroup_rsv_reserved += qgroup_reserve;
	FUNC16(&block_rsv->lock);

	if (delalloc_lock)
		FUNC13(&inode->delalloc_mutex);
	return 0;
out_qgroup:
	FUNC6(root, qgroup_reserve);
out_fail:
	if (delalloc_lock)
		FUNC13(&inode->delalloc_mutex);
	return ret;
}