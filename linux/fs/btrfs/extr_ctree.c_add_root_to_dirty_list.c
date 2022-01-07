
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {int dirty_list; TYPE_1__ root_key; int state; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int trans_lock; int dirty_cowonly_roots; } ;


 scalar_t__ BTRFS_EXTENT_TREE_OBJECTID ;
 int BTRFS_ROOT_DIRTY ;
 int BTRFS_ROOT_TRACK_DIRTY ;
 int list_move (int *,int *) ;
 int list_move_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void add_root_to_dirty_list(struct btrfs_root *root)
{
 struct btrfs_fs_info *fs_info = root->fs_info;

 if (test_bit(BTRFS_ROOT_DIRTY, &root->state) ||
     !test_bit(BTRFS_ROOT_TRACK_DIRTY, &root->state))
  return;

 spin_lock(&fs_info->trans_lock);
 if (!test_and_set_bit(BTRFS_ROOT_DIRTY, &root->state)) {

  if (root->root_key.objectid == BTRFS_EXTENT_TREE_OBJECTID)
   list_move_tail(&root->dirty_list,
           &fs_info->dirty_cowonly_roots);
  else
   list_move(&root->dirty_list,
      &fs_info->dirty_cowonly_roots);
 }
 spin_unlock(&fs_info->trans_lock);
}
