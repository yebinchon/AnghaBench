
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root {scalar_t__ ino_cache_state; int ino_cache_lock; struct btrfs_free_space_ctl* free_ino_pinned; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int commit_root_sem; } ;
struct btrfs_free_space_ctl {int dummy; } ;


 scalar_t__ BTRFS_CACHE_FINISHED ;
 int INODE_MAP_CACHE ;
 int __btrfs_add_free_space (struct btrfs_fs_info*,struct btrfs_free_space_ctl*,int ,int) ;
 int btrfs_test_opt (struct btrfs_fs_info*,int ) ;
 int down_write (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int start_caching (struct btrfs_root*) ;
 int up_write (int *) ;

void btrfs_return_ino(struct btrfs_root *root, u64 objectid)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_free_space_ctl *pinned = root->free_ino_pinned;

 if (!btrfs_test_opt(fs_info, INODE_MAP_CACHE))
  return;
again:
 if (root->ino_cache_state == BTRFS_CACHE_FINISHED) {
  __btrfs_add_free_space(fs_info, pinned, objectid, 1);
 } else {
  down_write(&fs_info->commit_root_sem);
  spin_lock(&root->ino_cache_lock);
  if (root->ino_cache_state == BTRFS_CACHE_FINISHED) {
   spin_unlock(&root->ino_cache_lock);
   up_write(&fs_info->commit_root_sem);
   goto again;
  }
  spin_unlock(&root->ino_cache_lock);

  start_caching(root);

  __btrfs_add_free_space(fs_info, pinned, objectid, 1);

  up_write(&fs_info->commit_root_sem);
 }
}
