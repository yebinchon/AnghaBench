
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct btrfs_ordered_sum {int dummy; } ;
struct btrfs_fs_info {int sectorsize; } ;


 int PAGE_SIZE ;

__attribute__((used)) static inline u32 max_ordered_sum_bytes(struct btrfs_fs_info *fs_info,
     u16 csum_size)
{
 u32 ncsums = (PAGE_SIZE - sizeof(struct btrfs_ordered_sum)) / csum_size;

 return ncsums * fs_info->sectorsize;
}
