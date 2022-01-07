
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct btrfs_path {int search_commit_root; int skip_locking; } ;
struct btrfs_fs_info {int tree_root; } ;
struct btrfs_free_space_ctl {scalar_t__ free_space; int tree_lock; } ;
struct TYPE_2__ {scalar_t__ offset; int objectid; } ;
struct btrfs_block_group_cache {scalar_t__ disk_cache_state; scalar_t__ bytes_super; TYPE_1__ key; int lock; int item; struct btrfs_free_space_ctl* free_space_ctl; struct btrfs_fs_info* fs_info; } ;


 scalar_t__ BTRFS_DC_CLEAR ;
 scalar_t__ BTRFS_DC_WRITTEN ;
 scalar_t__ IS_ERR (struct inode*) ;
 int __btrfs_remove_free_space_cache (struct btrfs_free_space_ctl*) ;
 int __load_free_space_cache (int ,struct inode*,struct btrfs_free_space_ctl*,struct btrfs_path*,int ) ;
 struct btrfs_path* btrfs_alloc_path () ;
 scalar_t__ btrfs_block_group_used (int *) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_warn (struct btrfs_fs_info*,char*,int ) ;
 int iput (struct inode*) ;
 struct inode* lookup_free_space_inode (struct btrfs_block_group_cache*,struct btrfs_path*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int load_free_space_cache(struct btrfs_block_group_cache *block_group)
{
 struct btrfs_fs_info *fs_info = block_group->fs_info;
 struct btrfs_free_space_ctl *ctl = block_group->free_space_ctl;
 struct inode *inode;
 struct btrfs_path *path;
 int ret = 0;
 bool matched;
 u64 used = btrfs_block_group_used(&block_group->item);





 spin_lock(&block_group->lock);
 if (block_group->disk_cache_state != BTRFS_DC_WRITTEN) {
  spin_unlock(&block_group->lock);
  return 0;
 }
 spin_unlock(&block_group->lock);

 path = btrfs_alloc_path();
 if (!path)
  return 0;
 path->search_commit_root = 1;
 path->skip_locking = 1;
 inode = lookup_free_space_inode(block_group, path);
 if (IS_ERR(inode)) {
  btrfs_free_path(path);
  return 0;
 }


 spin_lock(&block_group->lock);
 if (block_group->disk_cache_state != BTRFS_DC_WRITTEN) {
  spin_unlock(&block_group->lock);
  btrfs_free_path(path);
  goto out;
 }
 spin_unlock(&block_group->lock);

 ret = __load_free_space_cache(fs_info->tree_root, inode, ctl,
          path, block_group->key.objectid);
 btrfs_free_path(path);
 if (ret <= 0)
  goto out;

 spin_lock(&ctl->tree_lock);
 matched = (ctl->free_space == (block_group->key.offset - used -
           block_group->bytes_super));
 spin_unlock(&ctl->tree_lock);

 if (!matched) {
  __btrfs_remove_free_space_cache(ctl);
  btrfs_warn(fs_info,
      "block group %llu has wrong amount of free space",
      block_group->key.objectid);
  ret = -1;
 }
out:
 if (ret < 0) {

  spin_lock(&block_group->lock);
  block_group->disk_cache_state = BTRFS_DC_CLEAR;
  spin_unlock(&block_group->lock);
  ret = 0;

  btrfs_warn(fs_info,
      "failed to load free space cache for block group %llu, rebuilding it now",
      block_group->key.objectid);
 }

 iput(inode);
 return ret;
}
