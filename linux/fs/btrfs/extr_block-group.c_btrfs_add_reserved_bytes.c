
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_space_info {int lock; int flags; int bytes_reserved; } ;
struct btrfs_block_group_cache {int lock; int delalloc_bytes; int fs_info; int reserved; scalar_t__ ro; struct btrfs_space_info* space_info; } ;


 int EAGAIN ;
 int btrfs_space_info_update_bytes_may_use (int ,struct btrfs_space_info*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_btrfs_space_reservation (int ,char*,int ,int ,int) ;

int btrfs_add_reserved_bytes(struct btrfs_block_group_cache *cache,
        u64 ram_bytes, u64 num_bytes, int delalloc)
{
 struct btrfs_space_info *space_info = cache->space_info;
 int ret = 0;

 spin_lock(&space_info->lock);
 spin_lock(&cache->lock);
 if (cache->ro) {
  ret = -EAGAIN;
 } else {
  cache->reserved += num_bytes;
  space_info->bytes_reserved += num_bytes;
  trace_btrfs_space_reservation(cache->fs_info, "space_info",
           space_info->flags, num_bytes, 1);
  btrfs_space_info_update_bytes_may_use(cache->fs_info,
            space_info, -ram_bytes);
  if (delalloc)
   cache->delalloc_bytes += num_bytes;
 }
 spin_unlock(&cache->lock);
 spin_unlock(&space_info->lock);
 return ret;
}
