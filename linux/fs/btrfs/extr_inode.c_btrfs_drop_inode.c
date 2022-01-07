
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct btrfs_root {int root_item; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 scalar_t__ btrfs_root_refs (int *) ;
 int generic_drop_inode (struct inode*) ;

int btrfs_drop_inode(struct inode *inode)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;

 if (root == ((void*)0))
  return 1;


 if (btrfs_root_refs(&root->root_item) == 0)
  return 1;
 else
  return generic_drop_inode(inode);
}
