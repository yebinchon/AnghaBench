
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int flags; struct btrfs_root* tree_root; } ;


 int BTRFS_FS_FROZEN ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 struct btrfs_trans_handle* btrfs_attach_transaction_barrier (struct btrfs_root*) ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*) ;
 struct btrfs_fs_info* btrfs_sb (struct super_block*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int btrfs_freeze(struct super_block *sb)
{
 struct btrfs_trans_handle *trans;
 struct btrfs_fs_info *fs_info = btrfs_sb(sb);
 struct btrfs_root *root = fs_info->tree_root;

 set_bit(BTRFS_FS_FROZEN, &fs_info->flags);






 trans = btrfs_attach_transaction_barrier(root);
 if (IS_ERR(trans)) {

  if (PTR_ERR(trans) == -ENOENT)
   return 0;
  return PTR_ERR(trans);
 }
 return btrfs_commit_transaction(trans);
}
