
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_block_group_cache {int trimming; } ;


 int atomic_inc (int *) ;

void btrfs_get_block_group_trimming(struct btrfs_block_group_cache *cache)
{
 atomic_inc(&cache->trimming);
}
