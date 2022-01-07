
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_space_info {scalar_t__ bytes_used; scalar_t__ bytes_reserved; int total_bytes; } ;
struct btrfs_fs_info {int fs_state; } ;


 int BTRFS_FS_STATE_REMOUNTING ;
 int btrfs_calc_reclaim_metadata_size (struct btrfs_fs_info*,struct btrfs_space_info*,int) ;
 int btrfs_fs_closing (struct btrfs_fs_info*) ;
 scalar_t__ div_factor_fine (int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int need_do_async_reclaim(struct btrfs_fs_info *fs_info,
     struct btrfs_space_info *space_info,
     u64 used, bool system_chunk)
{
 u64 thresh = div_factor_fine(space_info->total_bytes, 98);


 if ((space_info->bytes_used + space_info->bytes_reserved) >= thresh)
  return 0;

 if (!btrfs_calc_reclaim_metadata_size(fs_info, space_info,
           system_chunk))
  return 0;

 return (used >= thresh && !btrfs_fs_closing(fs_info) &&
  !test_bit(BTRFS_FS_STATE_REMOUNTING, &fs_info->fs_state));
}
