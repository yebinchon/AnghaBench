
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_space_info {int lock; scalar_t__ max_extent_size; int bytes_reserved; int bytes_readonly; } ;
struct btrfs_block_group_cache {int lock; int delalloc_bytes; int reserved; scalar_t__ ro; struct btrfs_space_info* space_info; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_free_reserved_bytes(struct btrfs_block_group_cache *cache,
          u64 num_bytes, int delalloc)
{
 struct btrfs_space_info *space_info = cache->space_info;

 spin_lock(&space_info->lock);
 spin_lock(&cache->lock);
 if (cache->ro)
  space_info->bytes_readonly += num_bytes;
 cache->reserved -= num_bytes;
 space_info->bytes_reserved -= num_bytes;
 space_info->max_extent_size = 0;

 if (delalloc)
  cache->delalloc_bytes -= num_bytes;
 spin_unlock(&cache->lock);
 spin_unlock(&space_info->lock);
}
