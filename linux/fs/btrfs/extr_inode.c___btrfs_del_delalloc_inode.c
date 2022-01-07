
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int delalloc_root; int delalloc_inodes; int nr_delalloc_inodes; struct btrfs_fs_info* fs_info; } ;
struct btrfs_inode {int runtime_flags; int delalloc_inodes; } ;
struct btrfs_fs_info {int delalloc_root_lock; } ;


 int ASSERT (int ) ;
 int BTRFS_INODE_IN_DELALLOC_LIST ;
 int BUG_ON (int ) ;
 int clear_bit (int ,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __btrfs_del_delalloc_inode(struct btrfs_root *root,
    struct btrfs_inode *inode)
{
 struct btrfs_fs_info *fs_info = root->fs_info;

 if (!list_empty(&inode->delalloc_inodes)) {
  list_del_init(&inode->delalloc_inodes);
  clear_bit(BTRFS_INODE_IN_DELALLOC_LIST,
     &inode->runtime_flags);
  root->nr_delalloc_inodes--;
  if (!root->nr_delalloc_inodes) {
   ASSERT(list_empty(&root->delalloc_inodes));
   spin_lock(&fs_info->delalloc_root_lock);
   BUG_ON(list_empty(&root->delalloc_root));
   list_del_init(&root->delalloc_root);
   spin_unlock(&fs_info->delalloc_root_lock);
  }
 }
}
