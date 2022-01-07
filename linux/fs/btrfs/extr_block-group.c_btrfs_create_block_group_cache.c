
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {int type; void* offset; void* objectid; } ;
struct btrfs_block_group_cache {int full_stripe_locks_root; int free_space_lock; int trimming; int io_list; int dirty_list; int ro_list; int bg_list; int cluster_list; int list; int data_rwsem; int lock; int count; int full_stripe_len; struct btrfs_fs_info* fs_info; TYPE_1__ key; void* free_space_ctl; } ;


 int BTRFS_BLOCK_GROUP_ITEM_KEY ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int btrfs_full_stripe_len (struct btrfs_fs_info*,void*) ;
 int btrfs_init_free_space_ctl (struct btrfs_block_group_cache*) ;
 int btrfs_init_full_stripe_locks_tree (int *) ;
 int init_rwsem (int *) ;
 int kfree (struct btrfs_block_group_cache*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int set_free_space_tree_thresholds (struct btrfs_block_group_cache*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct btrfs_block_group_cache *btrfs_create_block_group_cache(
  struct btrfs_fs_info *fs_info, u64 start, u64 size)
{
 struct btrfs_block_group_cache *cache;

 cache = kzalloc(sizeof(*cache), GFP_NOFS);
 if (!cache)
  return ((void*)0);

 cache->free_space_ctl = kzalloc(sizeof(*cache->free_space_ctl),
     GFP_NOFS);
 if (!cache->free_space_ctl) {
  kfree(cache);
  return ((void*)0);
 }

 cache->key.objectid = start;
 cache->key.offset = size;
 cache->key.type = BTRFS_BLOCK_GROUP_ITEM_KEY;

 cache->fs_info = fs_info;
 cache->full_stripe_len = btrfs_full_stripe_len(fs_info, start);
 set_free_space_tree_thresholds(cache);

 atomic_set(&cache->count, 1);
 spin_lock_init(&cache->lock);
 init_rwsem(&cache->data_rwsem);
 INIT_LIST_HEAD(&cache->list);
 INIT_LIST_HEAD(&cache->cluster_list);
 INIT_LIST_HEAD(&cache->bg_list);
 INIT_LIST_HEAD(&cache->ro_list);
 INIT_LIST_HEAD(&cache->dirty_list);
 INIT_LIST_HEAD(&cache->io_list);
 btrfs_init_free_space_ctl(cache);
 atomic_set(&cache->trimming, 0);
 mutex_init(&cache->free_space_lock);
 btrfs_init_full_stripe_locks_tree(&cache->full_stripe_locks_root);

 return cache;
}
