
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_fs_info {int sectorsize; } ;
struct TYPE_2__ {unsigned long offset; int type; scalar_t__ objectid; } ;
struct btrfs_block_group_cache {int free_space_lock; int bg_list; int cluster_list; int list; struct btrfs_fs_info* fs_info; int full_stripe_len; TYPE_1__ key; void* free_space_ctl; } ;


 int BTRFS_BLOCK_GROUP_ITEM_KEY ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int btrfs_init_free_space_ctl (struct btrfs_block_group_cache*) ;
 int kfree (struct btrfs_block_group_cache*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;

struct btrfs_block_group_cache *
btrfs_alloc_dummy_block_group(struct btrfs_fs_info *fs_info,
         unsigned long length)
{
 struct btrfs_block_group_cache *cache;

 cache = kzalloc(sizeof(*cache), GFP_KERNEL);
 if (!cache)
  return ((void*)0);
 cache->free_space_ctl = kzalloc(sizeof(*cache->free_space_ctl),
     GFP_KERNEL);
 if (!cache->free_space_ctl) {
  kfree(cache);
  return ((void*)0);
 }

 cache->key.objectid = 0;
 cache->key.offset = length;
 cache->key.type = BTRFS_BLOCK_GROUP_ITEM_KEY;
 cache->full_stripe_len = fs_info->sectorsize;
 cache->fs_info = fs_info;

 INIT_LIST_HEAD(&cache->list);
 INIT_LIST_HEAD(&cache->cluster_list);
 INIT_LIST_HEAD(&cache->bg_list);
 btrfs_init_free_space_ctl(cache);
 mutex_init(&cache->free_space_lock);

 return cache;
}
