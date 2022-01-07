
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_inode {int lock; int csum_bytes; TYPE_1__* root; } ;
struct btrfs_fs_info {int sectorsize; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;


 int ALIGN (int ,int ) ;
 int btrfs_calculate_inode_block_rsv_size (struct btrfs_fs_info*,struct btrfs_inode*) ;
 int btrfs_inode_rsv_release (struct btrfs_inode*,int) ;
 scalar_t__ btrfs_is_testing (struct btrfs_fs_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_delalloc_release_metadata(struct btrfs_inode *inode, u64 num_bytes,
         bool qgroup_free)
{
 struct btrfs_fs_info *fs_info = inode->root->fs_info;

 num_bytes = ALIGN(num_bytes, fs_info->sectorsize);
 spin_lock(&inode->lock);
 inode->csum_bytes -= num_bytes;
 btrfs_calculate_inode_block_rsv_size(fs_info, inode);
 spin_unlock(&inode->lock);

 if (btrfs_is_testing(fs_info))
  return;

 btrfs_inode_rsv_release(inode, qgroup_free);
}
