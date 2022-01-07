
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct compressed_bio {int dummy; } ;
struct btrfs_fs_info {int sectorsize; int super_copy; } ;


 int DIV_ROUND_UP (unsigned long,int ) ;
 int btrfs_super_csum_size (int ) ;

__attribute__((used)) static inline int compressed_bio_size(struct btrfs_fs_info *fs_info,
          unsigned long disk_size)
{
 u16 csum_size = btrfs_super_csum_size(fs_info->super_copy);

 return sizeof(struct compressed_bio) +
  (DIV_ROUND_UP(disk_size, fs_info->sectorsize)) * csum_size;
}
