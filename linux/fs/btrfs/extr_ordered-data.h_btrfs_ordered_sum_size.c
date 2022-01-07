
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_ordered_sum {int dummy; } ;
struct btrfs_fs_info {int super_copy; int sectorsize; } ;


 scalar_t__ DIV_ROUND_UP (unsigned long,int ) ;
 int btrfs_super_csum_size (int ) ;

__attribute__((used)) static inline int btrfs_ordered_sum_size(struct btrfs_fs_info *fs_info,
      unsigned long bytes)
{
 int num_sectors = (int)DIV_ROUND_UP(bytes, fs_info->sectorsize);
 int csum_size = btrfs_super_csum_size(fs_info->super_copy);

 return sizeof(struct btrfs_ordered_sum) + num_sectors * csum_size;
}
