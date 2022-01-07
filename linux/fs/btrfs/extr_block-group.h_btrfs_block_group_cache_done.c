
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_block_group_cache {scalar_t__ cached; } ;


 scalar_t__ BTRFS_CACHE_ERROR ;
 scalar_t__ BTRFS_CACHE_FINISHED ;
 int smp_mb () ;

__attribute__((used)) static inline int btrfs_block_group_cache_done(
  struct btrfs_block_group_cache *cache)
{
 smp_mb();
 return cache->cached == BTRFS_CACHE_FINISHED ||
  cache->cached == BTRFS_CACHE_ERROR;
}
