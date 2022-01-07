
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_caching_control {int wait; } ;
struct btrfs_block_group_cache {TYPE_1__* free_space_ctl; } ;
struct TYPE_2__ {scalar_t__ free_space; } ;


 scalar_t__ btrfs_block_group_cache_done (struct btrfs_block_group_cache*) ;
 struct btrfs_caching_control* btrfs_get_caching_control (struct btrfs_block_group_cache*) ;
 int btrfs_put_caching_control (struct btrfs_caching_control*) ;
 int wait_event (int ,int) ;

void btrfs_wait_block_group_cache_progress(struct btrfs_block_group_cache *cache,
        u64 num_bytes)
{
 struct btrfs_caching_control *caching_ctl;

 caching_ctl = btrfs_get_caching_control(cache);
 if (!caching_ctl)
  return;

 wait_event(caching_ctl->wait, btrfs_block_group_cache_done(cache) ||
     (cache->free_space_ctl->free_space >= num_bytes));

 btrfs_put_caching_control(caching_ctl);
}
