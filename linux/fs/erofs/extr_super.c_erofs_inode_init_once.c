
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct erofs_inode {int vfs_inode; } ;


 int inode_init_once (int *) ;

__attribute__((used)) static void erofs_inode_init_once(void *ptr)
{
 struct erofs_inode *vi = ptr;

 inode_init_once(&vi->vfs_inode);
}
