
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct super_block {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {scalar_t__ pending_changes; TYPE_1__* btree_inode; struct btrfs_root* tree_root; } ;
struct TYPE_2__ {int i_mapping; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int U64_MAX ;
 struct btrfs_trans_handle* btrfs_attach_transaction_barrier (struct btrfs_root*) ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*) ;
 struct btrfs_fs_info* btrfs_sb (struct super_block*) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int ) ;
 int btrfs_wait_ordered_roots (struct btrfs_fs_info*,int ,int ,int ) ;
 int filemap_flush (int ) ;
 int sb_end_write (struct super_block*) ;
 scalar_t__ sb_start_write_trylock (struct super_block*) ;
 int trace_btrfs_sync_fs (struct btrfs_fs_info*,int) ;

int btrfs_sync_fs(struct super_block *sb, int wait)
{
 struct btrfs_trans_handle *trans;
 struct btrfs_fs_info *fs_info = btrfs_sb(sb);
 struct btrfs_root *root = fs_info->tree_root;

 trace_btrfs_sync_fs(fs_info, wait);

 if (!wait) {
  filemap_flush(fs_info->btree_inode->i_mapping);
  return 0;
 }

 btrfs_wait_ordered_roots(fs_info, U64_MAX, 0, (u64)-1);

 trans = btrfs_attach_transaction_barrier(root);
 if (IS_ERR(trans)) {

  if (PTR_ERR(trans) == -ENOENT) {




   if (fs_info->pending_changes == 0)
    return 0;






   if (sb_start_write_trylock(sb))
    sb_end_write(sb);
   else
    return 0;
   trans = btrfs_start_transaction(root, 0);
  }
  if (IS_ERR(trans))
   return PTR_ERR(trans);
 }
 return btrfs_commit_transaction(trans);
}
