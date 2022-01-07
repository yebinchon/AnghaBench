
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_caching_control {int count; } ;
struct btrfs_block_group_cache {int lock; struct btrfs_caching_control* caching_ctl; } ;


 int refcount_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct btrfs_caching_control *btrfs_get_caching_control(
  struct btrfs_block_group_cache *cache)
{
 struct btrfs_caching_control *ctl;

 spin_lock(&cache->lock);
 if (!cache->caching_ctl) {
  spin_unlock(&cache->lock);
  return ((void*)0);
 }

 ctl = cache->caching_ctl;
 refcount_inc(&ctl->count);
 spin_unlock(&cache->lock);
 return ctl;
}
