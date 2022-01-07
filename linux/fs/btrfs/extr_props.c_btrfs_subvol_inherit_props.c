
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_key {scalar_t__ offset; int type; int objectid; } ;
struct TYPE_2__ {struct super_block* sb; } ;


 int BTRFS_FIRST_FREE_OBJECTID ;
 int BTRFS_INODE_ITEM_KEY ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 struct inode* btrfs_iget (struct super_block*,struct btrfs_key*,struct btrfs_root*,int *) ;
 int inherit_props (struct btrfs_trans_handle*,struct inode*,struct inode*) ;
 int iput (struct inode*) ;

int btrfs_subvol_inherit_props(struct btrfs_trans_handle *trans,
          struct btrfs_root *root,
          struct btrfs_root *parent_root)
{
 struct super_block *sb = root->fs_info->sb;
 struct btrfs_key key;
 struct inode *parent_inode, *child_inode;
 int ret;

 key.objectid = BTRFS_FIRST_FREE_OBJECTID;
 key.type = BTRFS_INODE_ITEM_KEY;
 key.offset = 0;

 parent_inode = btrfs_iget(sb, &key, parent_root, ((void*)0));
 if (IS_ERR(parent_inode))
  return PTR_ERR(parent_inode);

 child_inode = btrfs_iget(sb, &key, root, ((void*)0));
 if (IS_ERR(child_inode)) {
  iput(parent_inode);
  return PTR_ERR(child_inode);
 }

 ret = inherit_props(trans, child_inode, parent_inode);
 iput(child_inode);
 iput(parent_inode);

 return ret;
}
