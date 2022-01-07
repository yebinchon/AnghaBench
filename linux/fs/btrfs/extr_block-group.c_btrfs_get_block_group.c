
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_block_group_cache {int count; } ;


 int atomic_inc (int *) ;

void btrfs_get_block_group(struct btrfs_block_group_cache *cache)
{
 atomic_inc(&cache->count);
}
