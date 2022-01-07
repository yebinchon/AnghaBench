
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int root_list; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int trans_lock; int dead_roots; } ;


 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_add_dead_root(struct btrfs_root *root)
{
 struct btrfs_fs_info *fs_info = root->fs_info;

 spin_lock(&fs_info->trans_lock);
 if (list_empty(&root->root_list))
  list_add_tail(&root->root_list, &fs_info->dead_roots);
 spin_unlock(&fs_info->trans_lock);
}
