
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_inode {int lock; TYPE_1__* root; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;


 int btrfs_calculate_inode_block_rsv_size (struct btrfs_fs_info*,struct btrfs_inode*) ;
 int btrfs_inode_rsv_release (struct btrfs_inode*,int) ;
 scalar_t__ btrfs_is_testing (struct btrfs_fs_info*) ;
 int btrfs_mod_outstanding_extents (struct btrfs_inode*,unsigned int) ;
 unsigned int count_max_extents (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_delalloc_release_extents(struct btrfs_inode *inode, u64 num_bytes)
{
 struct btrfs_fs_info *fs_info = inode->root->fs_info;
 unsigned num_extents;

 spin_lock(&inode->lock);
 num_extents = count_max_extents(num_bytes);
 btrfs_mod_outstanding_extents(inode, -num_extents);
 btrfs_calculate_inode_block_rsv_size(fs_info, inode);
 spin_unlock(&inode->lock);

 if (btrfs_is_testing(fs_info))
  return;

 btrfs_inode_rsv_release(inode, 1);
}
