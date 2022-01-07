
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_block_group_cache {struct btrfs_block_group_cache* free_space_ctl; } ;


 int __btrfs_remove_free_space_cache (struct btrfs_block_group_cache*) ;
 int kfree (struct btrfs_block_group_cache*) ;

void btrfs_free_dummy_block_group(struct btrfs_block_group_cache *cache)
{
 if (!cache)
  return;
 __btrfs_remove_free_space_cache(cache->free_space_ctl);
 kfree(cache->free_space_ctl);
 kfree(cache);
}
