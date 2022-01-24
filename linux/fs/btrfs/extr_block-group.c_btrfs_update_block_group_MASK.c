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
typedef  scalar_t__ u64 ;
struct btrfs_trans_handle {TYPE_2__* transaction; int /*<<< orphan*/  delayed_ref_updates; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  pinned_extents; int /*<<< orphan*/  delalloc_root_lock; int /*<<< orphan*/  super_copy; } ;
struct TYPE_4__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_block_group_cache {scalar_t__ cached; scalar_t__ disk_cache_state; scalar_t__ reserved; scalar_t__ pinned; int /*<<< orphan*/  dirty_list; TYPE_3__* space_info; int /*<<< orphan*/  lock; int /*<<< orphan*/  item; TYPE_1__ key; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {scalar_t__ bytes_reserved; scalar_t__ bytes_used; scalar_t__ disk_used; int /*<<< orphan*/  total_bytes_pinned; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  dirty_bgs_lock; int /*<<< orphan*/  dirty_bgs; } ;

/* Variables and functions */
 scalar_t__ BTRFS_CACHE_NO ; 
 scalar_t__ BTRFS_DC_CLEAR ; 
 int /*<<< orphan*/  BTRFS_TOTAL_BYTES_PINNED_BATCH ; 
 int ENOENT ; 
 int GFP_NOFS ; 
 int /*<<< orphan*/  SPACE_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int __GFP_NOFAIL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_block_group_cache*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_block_group_cache*) ; 
 struct btrfs_block_group_cache* FUNC5 (struct btrfs_fs_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_fs_info*,TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

int FUNC21(struct btrfs_trans_handle *trans,
			     u64 bytenr, u64 num_bytes, int alloc)
{
	struct btrfs_fs_info *info = trans->fs_info;
	struct btrfs_block_group_cache *cache = NULL;
	u64 total = num_bytes;
	u64 old_val;
	u64 byte_in_group;
	int factor;
	int ret = 0;

	/* Block accounting for super block */
	FUNC19(&info->delalloc_root_lock);
	old_val = FUNC11(info->super_copy);
	if (alloc)
		old_val += num_bytes;
	else
		old_val -= num_bytes;
	FUNC9(info->super_copy, old_val);
	FUNC20(&info->delalloc_root_lock);

	while (total) {
		cache = FUNC5(info, bytenr);
		if (!cache) {
			ret = -ENOENT;
			break;
		}
		factor = FUNC1(cache->flags);

		/*
		 * If this block group has free space cache written out, we
		 * need to make sure to load it if we are removing space.  This
		 * is because we need the unpinning stage to actually add the
		 * space back to the block group, otherwise we will leak space.
		 */
		if (!alloc && cache->cached == BTRFS_CACHE_NO)
			FUNC3(cache, 1);

		byte_in_group = bytenr - cache->key.objectid;
		FUNC0(byte_in_group > cache->key.offset);

		FUNC19(&cache->space_info->lock);
		FUNC19(&cache->lock);

		if (FUNC12(info, SPACE_CACHE) &&
		    cache->disk_cache_state < BTRFS_DC_CLEAR)
			cache->disk_cache_state = BTRFS_DC_CLEAR;

		old_val = FUNC2(&cache->item);
		num_bytes = FUNC16(total, cache->key.offset - byte_in_group);
		if (alloc) {
			old_val += num_bytes;
			FUNC8(&cache->item, old_val);
			cache->reserved -= num_bytes;
			cache->space_info->bytes_reserved -= num_bytes;
			cache->space_info->bytes_used += num_bytes;
			cache->space_info->disk_used += num_bytes * factor;
			FUNC20(&cache->lock);
			FUNC20(&cache->space_info->lock);
		} else {
			old_val -= num_bytes;
			FUNC8(&cache->item, old_val);
			cache->pinned += num_bytes;
			FUNC10(info,
					cache->space_info, num_bytes);
			cache->space_info->bytes_used -= num_bytes;
			cache->space_info->disk_used -= num_bytes * factor;
			FUNC20(&cache->lock);
			FUNC20(&cache->space_info->lock);

			FUNC17(
					&cache->space_info->total_bytes_pinned,
					num_bytes,
					BTRFS_TOTAL_BYTES_PINNED_BATCH);
			FUNC18(info->pinned_extents,
					 bytenr, bytenr + num_bytes - 1,
					 GFP_NOFS | __GFP_NOFAIL);
		}

		FUNC19(&trans->transaction->dirty_bgs_lock);
		if (FUNC15(&cache->dirty_list)) {
			FUNC14(&cache->dirty_list,
				      &trans->transaction->dirty_bgs);
			trans->delayed_ref_updates++;
			FUNC4(cache);
		}
		FUNC20(&trans->transaction->dirty_bgs_lock);

		/*
		 * No longer have used bytes in this block group, queue it for
		 * deletion. We do this after adding the block group to the
		 * dirty list to avoid races between cleaner kthread and space
		 * cache writeout.
		 */
		if (!alloc && old_val == 0)
			FUNC6(cache);

		FUNC7(cache);
		total -= num_bytes;
		bytenr += num_bytes;
	}

	/* Modified block groups are accounted for in the delayed_refs_rsv. */
	FUNC13(trans);
	return ret;
}