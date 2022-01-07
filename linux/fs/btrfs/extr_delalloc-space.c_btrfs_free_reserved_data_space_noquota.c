
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct inode {int i_sb; } ;
struct btrfs_space_info {int lock; } ;
struct btrfs_fs_info {struct btrfs_space_info* data_sinfo; int sectorsize; } ;


 struct btrfs_fs_info* btrfs_sb (int ) ;
 int btrfs_space_info_update_bytes_may_use (struct btrfs_fs_info*,struct btrfs_space_info*,scalar_t__) ;
 scalar_t__ round_down (scalar_t__,int ) ;
 scalar_t__ round_up (scalar_t__,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_free_reserved_data_space_noquota(struct inode *inode, u64 start,
         u64 len)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 struct btrfs_space_info *data_sinfo;


 len = round_up(start + len, fs_info->sectorsize) -
       round_down(start, fs_info->sectorsize);
 start = round_down(start, fs_info->sectorsize);

 data_sinfo = fs_info->data_sinfo;
 spin_lock(&data_sinfo->lock);
 btrfs_space_info_update_bytes_may_use(fs_info, data_sinfo, -len);
 spin_unlock(&data_sinfo->lock);
}
