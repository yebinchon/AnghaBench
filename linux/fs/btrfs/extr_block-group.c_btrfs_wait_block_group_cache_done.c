
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_caching_control {int wait; } ;
struct btrfs_block_group_cache {scalar_t__ cached; } ;


 scalar_t__ BTRFS_CACHE_ERROR ;
 int EIO ;
 int btrfs_block_group_cache_done (struct btrfs_block_group_cache*) ;
 struct btrfs_caching_control* btrfs_get_caching_control (struct btrfs_block_group_cache*) ;
 int btrfs_put_caching_control (struct btrfs_caching_control*) ;
 int wait_event (int ,int ) ;

int btrfs_wait_block_group_cache_done(struct btrfs_block_group_cache *cache)
{
 struct btrfs_caching_control *caching_ctl;
 int ret = 0;

 caching_ctl = btrfs_get_caching_control(cache);
 if (!caching_ctl)
  return (cache->cached == BTRFS_CACHE_ERROR) ? -EIO : 0;

 wait_event(caching_ctl->wait, btrfs_block_group_cache_done(cache));
 if (cache->cached == BTRFS_CACHE_ERROR)
  ret = -EIO;
 btrfs_put_caching_control(caching_ctl);
 return ret;
}
