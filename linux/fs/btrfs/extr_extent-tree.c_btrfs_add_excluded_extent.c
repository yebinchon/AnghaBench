
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_fs_info {int * freed_extents; } ;


 int EXTENT_UPTODATE ;
 int set_extent_bits (int *,scalar_t__,scalar_t__,int ) ;

int btrfs_add_excluded_extent(struct btrfs_fs_info *fs_info,
         u64 start, u64 num_bytes)
{
 u64 end = start + num_bytes - 1;
 set_extent_bits(&fs_info->freed_extents[0],
   start, end, EXTENT_UPTODATE);
 set_extent_bits(&fs_info->freed_extents[1],
   start, end, EXTENT_UPTODATE);
 return 0;
}
