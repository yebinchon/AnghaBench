
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;


 int inherit_props (struct btrfs_trans_handle*,struct inode*,struct inode*) ;

int btrfs_inode_inherit_props(struct btrfs_trans_handle *trans,
         struct inode *inode,
         struct inode *dir)
{
 if (!dir)
  return 0;

 return inherit_props(trans, inode, dir);
}
