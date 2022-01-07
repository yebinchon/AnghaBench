
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_fs_info {int pinned_extents; } ;
struct btrfs_block_group_cache {struct btrfs_fs_info* fs_info; } ;


 int BUG_ON (int) ;
 int EXTENT_DIRTY ;
 int EXTENT_UPTODATE ;
 int btrfs_add_free_space (struct btrfs_block_group_cache*,scalar_t__,scalar_t__) ;
 int find_first_extent_bit (int ,scalar_t__,scalar_t__*,scalar_t__*,int,int *) ;

u64 add_new_free_space(struct btrfs_block_group_cache *block_group,
         u64 start, u64 end)
{
 struct btrfs_fs_info *info = block_group->fs_info;
 u64 extent_start, extent_end, size, total_added = 0;
 int ret;

 while (start < end) {
  ret = find_first_extent_bit(info->pinned_extents, start,
         &extent_start, &extent_end,
         EXTENT_DIRTY | EXTENT_UPTODATE,
         ((void*)0));
  if (ret)
   break;

  if (extent_start <= start) {
   start = extent_end + 1;
  } else if (extent_start > start && extent_start < end) {
   size = extent_start - start;
   total_added += size;
   ret = btrfs_add_free_space(block_group, start,
         size);
   BUG_ON(ret);
   start = extent_end + 1;
  } else {
   break;
  }
 }

 if (start < end) {
  size = end - start;
  total_added += size;
  ret = btrfs_add_free_space(block_group, start, size);
  BUG_ON(ret);
 }

 return total_added;
}
