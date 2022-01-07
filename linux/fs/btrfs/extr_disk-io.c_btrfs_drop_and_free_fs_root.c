
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ objectid; } ;
struct btrfs_root {scalar_t__ free_ino_ctl; scalar_t__ free_ino_pinned; TYPE_2__* reloc_root; int root_item; TYPE_1__ root_key; } ;
struct btrfs_fs_info {int fs_state; int subvol_srcu; int fs_roots_radix_lock; int fs_roots_radix; } ;
struct TYPE_4__ {int commit_root; int node; } ;


 int BTRFS_FS_STATE_ERROR ;
 int __btrfs_remove_free_space_cache (scalar_t__) ;
 int btrfs_free_fs_root (struct btrfs_root*) ;
 int btrfs_free_log (int *,struct btrfs_root*) ;
 int btrfs_put_fs_root (TYPE_2__*) ;
 scalar_t__ btrfs_root_refs (int *) ;
 int free_extent_buffer (int ) ;
 int radix_tree_delete (int *,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_srcu (int *) ;
 scalar_t__ test_bit (int ,int *) ;

void btrfs_drop_and_free_fs_root(struct btrfs_fs_info *fs_info,
      struct btrfs_root *root)
{
 spin_lock(&fs_info->fs_roots_radix_lock);
 radix_tree_delete(&fs_info->fs_roots_radix,
     (unsigned long)root->root_key.objectid);
 spin_unlock(&fs_info->fs_roots_radix_lock);

 if (btrfs_root_refs(&root->root_item) == 0)
  synchronize_srcu(&fs_info->subvol_srcu);

 if (test_bit(BTRFS_FS_STATE_ERROR, &fs_info->fs_state)) {
  btrfs_free_log(((void*)0), root);
  if (root->reloc_root) {
   free_extent_buffer(root->reloc_root->node);
   free_extent_buffer(root->reloc_root->commit_root);
   btrfs_put_fs_root(root->reloc_root);
   root->reloc_root = ((void*)0);
  }
 }

 if (root->free_ino_pinned)
  __btrfs_remove_free_space_cache(root->free_ino_pinned);
 if (root->free_ino_ctl)
  __btrfs_remove_free_space_cache(root->free_ino_ctl);
 btrfs_free_fs_root(root);
}
