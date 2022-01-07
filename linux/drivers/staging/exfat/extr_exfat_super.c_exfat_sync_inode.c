
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int exfat_write_inode (struct inode*,int *) ;

__attribute__((used)) static int exfat_sync_inode(struct inode *inode)
{
 return exfat_write_inode(inode, ((void*)0));
}
