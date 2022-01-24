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
typedef  int u64 ;
struct inode {int dummy; } ;
struct extent_changeset {int dummy; } ;
struct btrfs_trans_handle {scalar_t__ transid; TYPE_2__* transaction; scalar_t__ aborted; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  global_block_rsv; struct btrfs_root* tree_root; } ;
struct TYPE_4__ {int offset; } ;
struct btrfs_block_group_cache {int disk_cache_state; scalar_t__ cache_generation; scalar_t__ cached; int /*<<< orphan*/  lock; TYPE_1__ key; scalar_t__ ro; struct btrfs_fs_info* fs_info; } ;
struct TYPE_6__ {scalar_t__ generation; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ BTRFS_CACHE_FINISHED ; 
 int BTRFS_DC_ERROR ; 
 int BTRFS_DC_SETUP ; 
 void* BTRFS_DC_WRITTEN ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_TRANS_CACHE_ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOENT ; 
 int ENOSPC ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int PAGE_SIZE ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  SPACE_CACHE ; 
 int SZ_1M ; 
 int /*<<< orphan*/  SZ_256M ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_trans_handle*,int) ; 
 int FUNC6 (struct inode*,struct extent_changeset**,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct btrfs_fs_info*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct inode*,struct btrfs_trans_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct btrfs_trans_handle*,int /*<<< orphan*/ *,struct inode*) ; 
 int FUNC12 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 int FUNC13 (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*) ; 
 int FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_changeset*) ; 
 scalar_t__ FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 struct inode* FUNC18 (struct btrfs_block_group_cache*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct btrfs_block_group_cache *block_group,
			    struct btrfs_trans_handle *trans,
			    struct btrfs_path *path)
{
	struct btrfs_fs_info *fs_info = block_group->fs_info;
	struct btrfs_root *root = fs_info->tree_root;
	struct inode *inode = NULL;
	struct extent_changeset *data_reserved = NULL;
	u64 alloc_hint = 0;
	int dcs = BTRFS_DC_ERROR;
	u64 num_pages = 0;
	int retries = 0;
	int ret = 0;

	/*
	 * If this block group is smaller than 100 megs don't bother caching the
	 * block group.
	 */
	if (block_group->key.offset < (100 * SZ_1M)) {
		FUNC20(&block_group->lock);
		block_group->disk_cache_state = BTRFS_DC_WRITTEN;
		FUNC21(&block_group->lock);
		return 0;
	}

	if (trans->aborted)
		return 0;
again:
	inode = FUNC18(block_group, path);
	if (FUNC2(inode) && FUNC3(inode) != -ENOENT) {
		ret = FUNC3(inode);
		FUNC9(path);
		goto out;
	}

	if (FUNC2(inode)) {
		FUNC1(retries);
		retries++;

		if (block_group->ro)
			goto out_free;

		ret = FUNC13(trans, block_group, path);
		if (ret)
			goto out_free;
		goto again;
	}

	/*
	 * We want to set the generation to 0, that way if anything goes wrong
	 * from here on out we know not to trust this cache when we load up next
	 * time.
	 */
	FUNC0(inode)->generation = 0;
	ret = FUNC12(trans, root, inode);
	if (ret) {
		/*
		 * So theoretically we could recover from this, simply set the
		 * super cache generation to 0 so we know to invalidate the
		 * cache, but then we'd have to keep track of the block groups
		 * that fail this way so we know we _have_ to reset this cache
		 * before the next commit or risk reading stale cache.  So to
		 * limit our exposure to horrible edge cases lets just abort the
		 * transaction, this only happens in really bad situations
		 * anyway.
		 */
		FUNC5(trans, ret);
		goto out_put;
	}
	FUNC4(ret);

	/* We've already setup this transaction, go ahead and exit */
	if (block_group->cache_generation == trans->transid &&
	    FUNC16(inode)) {
		dcs = BTRFS_DC_SETUP;
		goto out_put;
	}

	if (FUNC16(inode) > 0) {
		ret = FUNC7(fs_info,
					&fs_info->global_block_rsv);
		if (ret)
			goto out_put;

		ret = FUNC11(trans, NULL, inode);
		if (ret)
			goto out_put;
	}

	FUNC20(&block_group->lock);
	if (block_group->cached != BTRFS_CACHE_FINISHED ||
	    !FUNC10(fs_info, SPACE_CACHE)) {
		/*
		 * don't bother trying to write stuff out _if_
		 * a) we're not cached,
		 * b) we're with nospace_cache mount option,
		 * c) we're with v2 space_cache (FREE_SPACE_TREE).
		 */
		dcs = BTRFS_DC_WRITTEN;
		FUNC21(&block_group->lock);
		goto out_put;
	}
	FUNC21(&block_group->lock);

	/*
	 * We hit an ENOSPC when setting up the cache in this transaction, just
	 * skip doing the setup, we've already cleared the cache so we're safe.
	 */
	if (FUNC22(BTRFS_TRANS_CACHE_ENOSPC, &trans->transaction->flags)) {
		ret = -ENOSPC;
		goto out_put;
	}

	/*
	 * Try to preallocate enough space based on how big the block group is.
	 * Keep in mind this has to include any pinned space which could end up
	 * taking up quite a bit since it's not folded into the other space
	 * cache.
	 */
	num_pages = FUNC14(block_group->key.offset, SZ_256M);
	if (!num_pages)
		num_pages = 1;

	num_pages *= 16;
	num_pages *= PAGE_SIZE;

	ret = FUNC6(inode, &data_reserved, 0, num_pages);
	if (ret)
		goto out_put;

	ret = FUNC8(inode, trans, 0, 0, num_pages,
					      num_pages, num_pages,
					      &alloc_hint);
	/*
	 * Our cache requires contiguous chunks so that we don't modify a bunch
	 * of metadata or split extents when writing the cache out, which means
	 * we can enospc if we are heavily fragmented in addition to just normal
	 * out of space conditions.  So if we hit this just skip setting up any
	 * other block groups for this transaction, maybe we'll unpin enough
	 * space the next time around.
	 */
	if (!ret)
		dcs = BTRFS_DC_SETUP;
	else if (ret == -ENOSPC)
		FUNC19(BTRFS_TRANS_CACHE_ENOSPC, &trans->transaction->flags);

out_put:
	FUNC17(inode);
out_free:
	FUNC9(path);
out:
	FUNC20(&block_group->lock);
	if (!ret && dcs == BTRFS_DC_SETUP)
		block_group->cache_generation = trans->transid;
	block_group->disk_cache_state = dcs;
	FUNC21(&block_group->lock);

	FUNC15(data_reserved);
	return ret;
}