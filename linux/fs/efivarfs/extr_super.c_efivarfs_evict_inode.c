
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int clear_inode (struct inode*) ;

__attribute__((used)) static void efivarfs_evict_inode(struct inode *inode)
{
 clear_inode(inode);
}
