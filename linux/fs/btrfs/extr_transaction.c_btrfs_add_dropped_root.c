
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_transaction {int dropped_roots_lock; int dropped_roots; } ;
struct btrfs_trans_handle {struct btrfs_transaction* transaction; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {TYPE_1__ root_key; int root_list; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int fs_roots_radix_lock; int fs_roots_radix; } ;


 int BTRFS_ROOT_TRANS_TAG ;
 int list_add_tail (int *,int *) ;
 int radix_tree_tag_clear (int *,unsigned long,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void btrfs_add_dropped_root(struct btrfs_trans_handle *trans,
       struct btrfs_root *root)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_transaction *cur_trans = trans->transaction;


 spin_lock(&cur_trans->dropped_roots_lock);
 list_add_tail(&root->root_list, &cur_trans->dropped_roots);
 spin_unlock(&cur_trans->dropped_roots_lock);


 spin_lock(&fs_info->fs_roots_radix_lock);
 radix_tree_tag_clear(&fs_info->fs_roots_radix,
        (unsigned long)root->root_key.objectid,
        BTRFS_ROOT_TRANS_TAG);
 spin_unlock(&fs_info->fs_roots_radix_lock);
}
