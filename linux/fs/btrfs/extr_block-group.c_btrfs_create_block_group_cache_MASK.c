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
typedef  void* u64 ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; void* offset; void* objectid; } ;
struct btrfs_block_group_cache {int /*<<< orphan*/  full_stripe_locks_root; int /*<<< orphan*/  free_space_lock; int /*<<< orphan*/  trimming; int /*<<< orphan*/  io_list; int /*<<< orphan*/  dirty_list; int /*<<< orphan*/  ro_list; int /*<<< orphan*/  bg_list; int /*<<< orphan*/  cluster_list; int /*<<< orphan*/  list; int /*<<< orphan*/  data_rwsem; int /*<<< orphan*/  lock; int /*<<< orphan*/  count; int /*<<< orphan*/  full_stripe_len; struct btrfs_fs_info* fs_info; TYPE_1__ key; void* free_space_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_BLOCK_GROUP_ITEM_KEY ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_block_group_cache*) ; 
 void* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_block_group_cache*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct btrfs_block_group_cache *FUNC11(
		struct btrfs_fs_info *fs_info, u64 start, u64 size)
{
	struct btrfs_block_group_cache *cache;

	cache = FUNC7(sizeof(*cache), GFP_NOFS);
	if (!cache)
		return NULL;

	cache->free_space_ctl = FUNC7(sizeof(*cache->free_space_ctl),
					GFP_NOFS);
	if (!cache->free_space_ctl) {
		FUNC6(cache);
		return NULL;
	}

	cache->key.objectid = start;
	cache->key.offset = size;
	cache->key.type = BTRFS_BLOCK_GROUP_ITEM_KEY;

	cache->fs_info = fs_info;
	cache->full_stripe_len = FUNC2(fs_info, start);
	FUNC9(cache);

	FUNC1(&cache->count, 1);
	FUNC10(&cache->lock);
	FUNC5(&cache->data_rwsem);
	FUNC0(&cache->list);
	FUNC0(&cache->cluster_list);
	FUNC0(&cache->bg_list);
	FUNC0(&cache->ro_list);
	FUNC0(&cache->dirty_list);
	FUNC0(&cache->io_list);
	FUNC3(cache);
	FUNC1(&cache->trimming, 0);
	FUNC8(&cache->free_space_lock);
	FUNC4(&cache->full_stripe_locks_root);

	return cache;
}