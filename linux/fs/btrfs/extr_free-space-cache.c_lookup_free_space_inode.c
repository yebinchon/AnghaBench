
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct inode {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_fs_info {int tree_root; } ;
struct TYPE_3__ {int objectid; } ;
struct btrfs_block_group_cache {int iref; int lock; struct inode* inode; int disk_cache_state; TYPE_1__ key; struct btrfs_fs_info* fs_info; } ;
struct TYPE_4__ {int flags; } ;


 int BTRFS_DC_CLEAR ;
 TYPE_2__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_NODATACOW ;
 int BTRFS_INODE_NODATASUM ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct inode* __lookup_free_space_inode (int ,struct btrfs_path*,int ) ;
 int btrfs_info (struct btrfs_fs_info*,char*) ;
 void* igrab (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct inode *lookup_free_space_inode(
  struct btrfs_block_group_cache *block_group,
  struct btrfs_path *path)
{
 struct btrfs_fs_info *fs_info = block_group->fs_info;
 struct inode *inode = ((void*)0);
 u32 flags = BTRFS_INODE_NODATASUM | BTRFS_INODE_NODATACOW;

 spin_lock(&block_group->lock);
 if (block_group->inode)
  inode = igrab(block_group->inode);
 spin_unlock(&block_group->lock);
 if (inode)
  return inode;

 inode = __lookup_free_space_inode(fs_info->tree_root, path,
       block_group->key.objectid);
 if (IS_ERR(inode))
  return inode;

 spin_lock(&block_group->lock);
 if (!((BTRFS_I(inode)->flags & flags) == flags)) {
  btrfs_info(fs_info, "Old style space inode found, converting.");
  BTRFS_I(inode)->flags |= BTRFS_INODE_NODATASUM |
   BTRFS_INODE_NODATACOW;
  block_group->disk_cache_state = BTRFS_DC_CLEAR;
 }

 if (!block_group->iref) {
  block_group->inode = igrab(inode);
  block_group->iref = 1;
 }
 spin_unlock(&block_group->lock);

 return inode;
}
