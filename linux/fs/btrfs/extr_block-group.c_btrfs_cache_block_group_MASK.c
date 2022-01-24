#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct btrfs_fs_info {int /*<<< orphan*/  caching_workers; int /*<<< orphan*/  commit_root_sem; int /*<<< orphan*/  caching_block_groups; } ;
struct btrfs_caching_control {int progress; int /*<<< orphan*/  work; int /*<<< orphan*/  list; int /*<<< orphan*/  count; int /*<<< orphan*/  wait; int /*<<< orphan*/  mutex; struct btrfs_block_group_cache* block_group; } ;
struct TYPE_3__ {int objectid; int offset; } ;
struct btrfs_block_group_cache {scalar_t__ cached; int last_byte_to_unpin; int has_caching_ctl; int /*<<< orphan*/  lock; struct btrfs_caching_control* caching_ctl; TYPE_2__* space_info; int /*<<< orphan*/  item; TYPE_1__ key; struct btrfs_fs_info* fs_info; } ;
struct TYPE_4__ {int bytes_used; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ BTRFS_CACHE_FAST ; 
 scalar_t__ BTRFS_CACHE_FINISHED ; 
 scalar_t__ BTRFS_CACHE_NO ; 
 void* BTRFS_CACHE_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPACE_CACHE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_caching_control*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  btrfs_cache_helper ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_caching_control*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct btrfs_block_group_cache*) ; 
 scalar_t__ FUNC10 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  caching_thread ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct btrfs_caching_control*) ; 
 struct btrfs_caching_control* FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

int FUNC30(struct btrfs_block_group_cache *cache,
			    int load_cache_only)
{
	FUNC0(wait);
	struct btrfs_fs_info *fs_info = cache->fs_info;
	struct btrfs_caching_control *caching_ctl;
	int ret = 0;

	caching_ctl = FUNC16(sizeof(*caching_ctl), GFP_NOFS);
	if (!caching_ctl)
		return -ENOMEM;

	FUNC1(&caching_ctl->list);
	FUNC19(&caching_ctl->mutex);
	FUNC14(&caching_ctl->wait);
	caching_ctl->block_group = cache;
	caching_ctl->progress = cache->key.objectid;
	FUNC24(&caching_ctl->count, 1);
	FUNC6(&caching_ctl->work, btrfs_cache_helper,
			caching_thread, NULL, NULL);

	FUNC26(&cache->lock);
	/*
	 * This should be a rare occasion, but this could happen I think in the
	 * case where one thread starts to load the space cache info, and then
	 * some other thread starts a transaction commit which tries to do an
	 * allocation while the other thread is still loading the space cache
	 * info.  The previous loop should have kept us from choosing this block
	 * group, but if we've moved to the state where we will wait on caching
	 * block groups we need to first check if we're doing a fast load here,
	 * so we can wait for it to finish, otherwise we could end up allocating
	 * from a block group who's cache gets evicted for one reason or
	 * another.
	 */
	while (cache->cached == BTRFS_CACHE_FAST) {
		struct btrfs_caching_control *ctl;

		ctl = cache->caching_ctl;
		FUNC23(&ctl->count);
		FUNC22(&ctl->wait, &wait, TASK_UNINTERRUPTIBLE);
		FUNC27(&cache->lock);

		FUNC25();

		FUNC12(&ctl->wait, &wait);
		FUNC7(ctl);
		FUNC26(&cache->lock);
	}

	if (cache->cached != BTRFS_CACHE_NO) {
		FUNC27(&cache->lock);
		FUNC15(caching_ctl);
		return 0;
	}
	FUNC2(cache->caching_ctl);
	cache->caching_ctl = caching_ctl;
	cache->cached = BTRFS_CACHE_FAST;
	FUNC27(&cache->lock);

	if (FUNC10(fs_info, SPACE_CACHE)) {
		FUNC20(&caching_ctl->mutex);
		ret = FUNC18(cache);

		FUNC26(&cache->lock);
		if (ret == 1) {
			cache->caching_ctl = NULL;
			cache->cached = BTRFS_CACHE_FINISHED;
			cache->last_byte_to_unpin = (u64)-1;
			caching_ctl->progress = (u64)-1;
		} else {
			if (load_cache_only) {
				cache->caching_ctl = NULL;
				cache->cached = BTRFS_CACHE_NO;
			} else {
				cache->cached = BTRFS_CACHE_STARTED;
				cache->has_caching_ctl = 1;
			}
		}
		FUNC27(&cache->lock);
#ifdef CONFIG_BTRFS_DEBUG
		if (ret == 1 &&
		    btrfs_should_fragment_free_space(cache)) {
			u64 bytes_used;

			spin_lock(&cache->space_info->lock);
			spin_lock(&cache->lock);
			bytes_used = cache->key.offset -
				btrfs_block_group_used(&cache->item);
			cache->space_info->bytes_used += bytes_used >> 1;
			spin_unlock(&cache->lock);
			spin_unlock(&cache->space_info->lock);
			fragment_free_space(cache);
		}
#endif
		FUNC21(&caching_ctl->mutex);

		FUNC29(&caching_ctl->wait);
		if (ret == 1) {
			FUNC7(caching_ctl);
			FUNC4(cache);
			return 0;
		}
	} else {
		/*
		 * We're either using the free space tree or no caching at all.
		 * Set cached to the appropriate value and wakeup any waiters.
		 */
		FUNC26(&cache->lock);
		if (load_cache_only) {
			cache->caching_ctl = NULL;
			cache->cached = BTRFS_CACHE_NO;
		} else {
			cache->cached = BTRFS_CACHE_STARTED;
			cache->has_caching_ctl = 1;
		}
		FUNC27(&cache->lock);
		FUNC29(&caching_ctl->wait);
	}

	if (load_cache_only) {
		FUNC7(caching_ctl);
		return 0;
	}

	FUNC11(&fs_info->commit_root_sem);
	FUNC23(&caching_ctl->count);
	FUNC17(&caching_ctl->list, &fs_info->caching_block_groups);
	FUNC28(&fs_info->commit_root_sem);

	FUNC5(cache);

	FUNC8(fs_info->caching_workers, &caching_ctl->work);

	return ret;
}