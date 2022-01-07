
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct btrfs_root {int nr_delalloc_inodes; int delalloc_lock; int delalloc_root; int delalloc_inodes; } ;
struct btrfs_fs_info {int delalloc_root_lock; int delalloc_roots; } ;
struct TYPE_2__ {int runtime_flags; int delalloc_inodes; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_IN_DELALLOC_LIST ;
 int BUG_ON (int) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void btrfs_add_delalloc_inodes(struct btrfs_root *root,
          struct inode *inode)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);

 spin_lock(&root->delalloc_lock);
 if (list_empty(&BTRFS_I(inode)->delalloc_inodes)) {
  list_add_tail(&BTRFS_I(inode)->delalloc_inodes,
         &root->delalloc_inodes);
  set_bit(BTRFS_INODE_IN_DELALLOC_LIST,
   &BTRFS_I(inode)->runtime_flags);
  root->nr_delalloc_inodes++;
  if (root->nr_delalloc_inodes == 1) {
   spin_lock(&fs_info->delalloc_root_lock);
   BUG_ON(!list_empty(&root->delalloc_root));
   list_add_tail(&root->delalloc_root,
          &fs_info->delalloc_roots);
   spin_unlock(&fs_info->delalloc_root_lock);
  }
 }
 spin_unlock(&root->delalloc_lock);
}
