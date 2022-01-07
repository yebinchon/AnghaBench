
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root_item {int dummy; } ;
struct btrfs_root {int log_transid; int root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int log_root_tree; } ;


 int btrfs_insert_root (struct btrfs_trans_handle*,int ,int *,struct btrfs_root_item*) ;
 int btrfs_update_root (struct btrfs_trans_handle*,int ,int *,struct btrfs_root_item*) ;

__attribute__((used)) static int update_log_root(struct btrfs_trans_handle *trans,
      struct btrfs_root *log,
      struct btrfs_root_item *root_item)
{
 struct btrfs_fs_info *fs_info = log->fs_info;
 int ret;

 if (log->log_transid == 1) {

  ret = btrfs_insert_root(trans, fs_info->log_root_tree,
    &log->root_key, root_item);
 } else {
  ret = btrfs_update_root(trans, fs_info->log_root_tree,
    &log->root_key, root_item);
 }
 return ret;
}
