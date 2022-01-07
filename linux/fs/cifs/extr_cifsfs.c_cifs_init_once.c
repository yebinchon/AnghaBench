
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsInodeInfo {int lock_sem; int vfs_inode; } ;


 int init_rwsem (int *) ;
 int inode_init_once (int *) ;

__attribute__((used)) static void
cifs_init_once(void *inode)
{
 struct cifsInodeInfo *cifsi = inode;

 inode_init_once(&cifsi->vfs_inode);
 init_rwsem(&cifsi->lock_sem);
}
