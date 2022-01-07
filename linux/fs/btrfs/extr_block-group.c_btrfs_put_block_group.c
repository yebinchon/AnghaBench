
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int root; } ;
struct btrfs_block_group_cache {scalar_t__ pinned; scalar_t__ reserved; struct btrfs_block_group_cache* free_space_ctl; TYPE_1__ full_stripe_locks_root; int count; } ;


 int RB_EMPTY_ROOT (int *) ;
 int WARN_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct btrfs_block_group_cache*) ;

void btrfs_put_block_group(struct btrfs_block_group_cache *cache)
{
 if (atomic_dec_and_test(&cache->count)) {
  WARN_ON(cache->pinned > 0);
  WARN_ON(cache->reserved > 0);
  WARN_ON(!RB_EMPTY_ROOT(&cache->full_stripe_locks_root.root));
  kfree(cache->free_space_ctl);
  kfree(cache);
 }
}
