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
struct btrfs_trans_handle {int allocating_chunk; scalar_t__ chunk_bytes_reserved; struct btrfs_fs_info* fs_info; } ;
struct btrfs_space_info {int force_alloc; int full; int chunk_alloc; int /*<<< orphan*/  lock; scalar_t__ max_extent_size; } ;
struct btrfs_fs_info {int metadata_ratio; int data_chunk_allocations; int /*<<< orphan*/  chunk_mutex; } ;
typedef  enum btrfs_chunk_alloc_enum { ____Placeholder_btrfs_chunk_alloc_enum } btrfs_chunk_alloc_enum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_space_info*) ; 
 scalar_t__ BTRFS_BLOCK_GROUP_DATA ; 
 scalar_t__ BTRFS_BLOCK_GROUP_METADATA ; 
 int CHUNK_ALLOC_NO_FORCE ; 
 int ENOSPC ; 
 scalar_t__ SZ_2M ; 
 int FUNC1 (struct btrfs_trans_handle*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_trans_handle*) ; 
 struct btrfs_space_info* FUNC3 (struct btrfs_fs_info*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct btrfs_space_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_trans_handle*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct btrfs_fs_info*,struct btrfs_space_info*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct btrfs_trans_handle *trans, u64 flags,
		      enum btrfs_chunk_alloc_enum force)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	struct btrfs_space_info *space_info;
	bool wait_for_alloc = false;
	bool should_alloc = false;
	int ret = 0;

	/* Don't re-enter if we're already allocating a chunk */
	if (trans->allocating_chunk)
		return -ENOSPC;

	space_info = FUNC3(fs_info, flags);
	FUNC0(space_info);

	do {
		FUNC11(&space_info->lock);
		if (force < space_info->force_alloc)
			force = space_info->force_alloc;
		should_alloc = FUNC10(fs_info, space_info, force);
		if (space_info->full) {
			/* No more free physical space */
			if (should_alloc)
				ret = -ENOSPC;
			else
				ret = 0;
			FUNC12(&space_info->lock);
			return ret;
		} else if (!should_alloc) {
			FUNC12(&space_info->lock);
			return 0;
		} else if (space_info->chunk_alloc) {
			/*
			 * Someone is already allocating, so we need to block
			 * until this someone is finished and then loop to
			 * recheck if we should continue with our allocation
			 * attempt.
			 */
			wait_for_alloc = true;
			FUNC12(&space_info->lock);
			FUNC8(&fs_info->chunk_mutex);
			FUNC9(&fs_info->chunk_mutex);
		} else {
			/* Proceed with allocation */
			space_info->chunk_alloc = 1;
			wait_for_alloc = false;
			FUNC12(&space_info->lock);
		}

		FUNC6();
	} while (wait_for_alloc);

	FUNC8(&fs_info->chunk_mutex);
	trans->allocating_chunk = true;

	/*
	 * If we have mixed data/metadata chunks we want to make sure we keep
	 * allocating mixed chunks instead of individual chunks.
	 */
	if (FUNC4(space_info))
		flags |= (BTRFS_BLOCK_GROUP_DATA | BTRFS_BLOCK_GROUP_METADATA);

	/*
	 * if we're doing a data chunk, go ahead and make sure that
	 * we keep a reasonable number of metadata chunks allocated in the
	 * FS as well.
	 */
	if (flags & BTRFS_BLOCK_GROUP_DATA && fs_info->metadata_ratio) {
		fs_info->data_chunk_allocations++;
		if (!(fs_info->data_chunk_allocations %
		      fs_info->metadata_ratio))
			FUNC7(fs_info);
	}

	/*
	 * Check if we have enough space in SYSTEM chunk because we may need
	 * to update devices.
	 */
	FUNC5(trans, flags);

	ret = FUNC1(trans, flags);
	trans->allocating_chunk = false;

	FUNC11(&space_info->lock);
	if (ret < 0) {
		if (ret == -ENOSPC)
			space_info->full = 1;
		else
			goto out;
	} else {
		ret = 1;
		space_info->max_extent_size = 0;
	}

	space_info->force_alloc = CHUNK_ALLOC_NO_FORCE;
out:
	space_info->chunk_alloc = 0;
	FUNC12(&space_info->lock);
	FUNC9(&fs_info->chunk_mutex);
	/*
	 * When we allocate a new chunk we reserve space in the chunk block
	 * reserve to make sure we can COW nodes/leafs in the chunk tree or
	 * add new nodes/leafs to it if we end up needing to do it when
	 * inserting the chunk item and updating device items as part of the
	 * second phase of chunk allocation, performed by
	 * btrfs_finish_chunk_alloc(). So make sure we don't accumulate a
	 * large number of new block groups to create in our transaction
	 * handle's new_bgs list to avoid exhausting the chunk block reserve
	 * in extreme cases - like having a single transaction create many new
	 * block groups when starting to write out the free space caches of all
	 * the block groups that were made dirty during the lifetime of the
	 * transaction.
	 */
	if (trans->chunk_bytes_reserved >= (u64)SZ_2M)
		FUNC2(trans);

	return ret;
}