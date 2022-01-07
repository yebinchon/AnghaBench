
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct affs_inode_info {int vfs_inode; int i_ext_lock; int i_link_lock; } ;


 int inode_init_once (int *) ;
 int sema_init (int *,int) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct affs_inode_info *ei = (struct affs_inode_info *) foo;

 sema_init(&ei->i_link_lock, 1);
 sema_init(&ei->i_ext_lock, 1);
 inode_init_once(&ei->vfs_inode);
}
