
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_root {int ino_cache_wait; int ino_cache_lock; int ino_cache_state; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;


 int BTRFS_CACHE_ERROR ;
 int INODE_MAP_CACHE ;
 int btrfs_clear_pending_and_info (struct btrfs_fs_info*,int ,char*) ;
 int btrfs_warn (struct btrfs_fs_info*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void fail_caching_thread(struct btrfs_root *root)
{
 struct btrfs_fs_info *fs_info = root->fs_info;

 btrfs_warn(fs_info, "failed to start inode caching task");
 btrfs_clear_pending_and_info(fs_info, INODE_MAP_CACHE,
         "disabling inode map caching");
 spin_lock(&root->ino_cache_lock);
 root->ino_cache_state = BTRFS_CACHE_ERROR;
 spin_unlock(&root->ino_cache_lock);
 wake_up(&root->ino_cache_wait);
}
