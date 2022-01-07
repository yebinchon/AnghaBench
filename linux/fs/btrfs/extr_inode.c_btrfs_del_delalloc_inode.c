
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int delalloc_lock; } ;
struct btrfs_inode {int dummy; } ;


 int __btrfs_del_delalloc_inode (struct btrfs_root*,struct btrfs_inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void btrfs_del_delalloc_inode(struct btrfs_root *root,
         struct btrfs_inode *inode)
{
 spin_lock(&root->delalloc_lock);
 __btrfs_del_delalloc_inode(root, inode);
 spin_unlock(&root->delalloc_lock);
}
