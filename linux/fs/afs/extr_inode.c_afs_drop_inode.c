
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* AFS_FS_I (struct inode*) ;
 int AFS_VNODE_PSEUDODIR ;
 int _enter (char*) ;
 int generic_delete_inode (struct inode*) ;
 int generic_drop_inode (struct inode*) ;
 scalar_t__ test_bit (int ,int *) ;

int afs_drop_inode(struct inode *inode)
{
 _enter("");

 if (test_bit(AFS_VNODE_PSEUDODIR, &AFS_FS_I(inode)->flags))
  return generic_delete_inode(inode);
 else
  return generic_drop_inode(inode);
}
