
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int mnt_sb; } ;


 int S_IFREG ;
 int inode_init_owner (struct inode*,int *,int ) ;
 struct inode* new_inode (int ) ;
 TYPE_1__* test_mnt ;

struct inode *btrfs_new_test_inode(void)
{
 struct inode *inode;

 inode = new_inode(test_mnt->mnt_sb);
 if (inode)
  inode_init_owner(inode, ((void*)0), S_IFREG);

 return inode;
}
