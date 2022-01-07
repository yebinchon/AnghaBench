
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {int state; TYPE_1__ root_key; } ;
struct btrfs_fs_info {int fs_roots_radix_lock; int fs_roots_radix; } ;


 int BTRFS_ROOT_IN_RADIX ;
 int GFP_NOFS ;
 int radix_tree_insert (int *,unsigned long,struct btrfs_root*) ;
 int radix_tree_preload (int ) ;
 int radix_tree_preload_end () ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btrfs_insert_fs_root(struct btrfs_fs_info *fs_info,
    struct btrfs_root *root)
{
 int ret;

 ret = radix_tree_preload(GFP_NOFS);
 if (ret)
  return ret;

 spin_lock(&fs_info->fs_roots_radix_lock);
 ret = radix_tree_insert(&fs_info->fs_roots_radix,
    (unsigned long)root->root_key.objectid,
    root);
 if (ret == 0)
  set_bit(BTRFS_ROOT_IN_RADIX, &root->state);
 spin_unlock(&fs_info->fs_roots_radix_lock);
 radix_tree_preload_end();

 return ret;
}
