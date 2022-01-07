
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct inode {int i_sb; } ;
struct extent_changeset {int dummy; } ;
struct btrfs_fs_info {int sectorsize; } ;


 int BTRFS_I (struct inode*) ;
 int btrfs_alloc_data_chunk_ondemand (int ,scalar_t__) ;
 int btrfs_free_reserved_data_space_noquota (struct inode*,scalar_t__,scalar_t__) ;
 int btrfs_qgroup_reserve_data (struct inode*,struct extent_changeset**,scalar_t__,scalar_t__) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 scalar_t__ round_down (scalar_t__,int ) ;
 scalar_t__ round_up (scalar_t__,int ) ;

int btrfs_check_data_free_space(struct inode *inode,
   struct extent_changeset **reserved, u64 start, u64 len)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 int ret;


 len = round_up(start + len, fs_info->sectorsize) -
       round_down(start, fs_info->sectorsize);
 start = round_down(start, fs_info->sectorsize);

 ret = btrfs_alloc_data_chunk_ondemand(BTRFS_I(inode), len);
 if (ret < 0)
  return ret;


 ret = btrfs_qgroup_reserve_data(inode, reserved, start, len);
 if (ret < 0)
  btrfs_free_reserved_data_space_noquota(inode, start, len);
 else
  ret = 0;
 return ret;
}
