
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct btrfs_block_rsv {unsigned int size; unsigned int qgroup_rsv_size; int lock; } ;
struct btrfs_inode {unsigned int outstanding_extents; int csum_bytes; int lock; struct btrfs_block_rsv block_rsv; } ;
struct btrfs_fs_info {unsigned int nodesize; } ;


 unsigned int btrfs_calc_insert_metadata_size (struct btrfs_fs_info*,unsigned int) ;
 scalar_t__ btrfs_calc_metadata_size (struct btrfs_fs_info*,int) ;
 unsigned int btrfs_csum_bytes_to_leaves (struct btrfs_fs_info*,int ) ;
 int lockdep_assert_held (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void btrfs_calculate_inode_block_rsv_size(struct btrfs_fs_info *fs_info,
       struct btrfs_inode *inode)
{
 struct btrfs_block_rsv *block_rsv = &inode->block_rsv;
 u64 reserve_size = 0;
 u64 qgroup_rsv_size = 0;
 u64 csum_leaves;
 unsigned outstanding_extents;

 lockdep_assert_held(&inode->lock);
 outstanding_extents = inode->outstanding_extents;





 if (outstanding_extents) {
  reserve_size = btrfs_calc_insert_metadata_size(fs_info,
      outstanding_extents);
  reserve_size += btrfs_calc_metadata_size(fs_info, 1);
 }
 csum_leaves = btrfs_csum_bytes_to_leaves(fs_info,
       inode->csum_bytes);
 reserve_size += btrfs_calc_insert_metadata_size(fs_info,
       csum_leaves);






 qgroup_rsv_size = (u64)outstanding_extents * fs_info->nodesize;

 spin_lock(&block_rsv->lock);
 block_rsv->size = reserve_size;
 block_rsv->qgroup_rsv_size = qgroup_rsv_size;
 spin_unlock(&block_rsv->lock);
}
