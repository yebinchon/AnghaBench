
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct dentry {int dummy; } ;
struct btrfs_trans_handle {int transid; } ;
struct btrfs_root {int root_item; struct btrfs_fs_info* fs_info; } ;
struct btrfs_log_ctx {scalar_t__ log_new_dentries; } ;
struct TYPE_2__ {scalar_t__ i_nlink; int i_mode; struct super_block* i_sb; } ;
struct btrfs_inode {scalar_t__ generation; scalar_t__ last_unlink_trans; TYPE_1__ vfs_inode; struct btrfs_root* root; } ;
struct btrfs_fs_info {scalar_t__ last_trans_committed; scalar_t__ last_trans_log_full_commit; } ;
typedef int loff_t ;


 int BTRFS_NO_LOG_SYNC ;
 int NOTREELOG ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int btrfs_end_log_trans (struct btrfs_root*) ;
 scalar_t__ btrfs_inode_in_log (struct btrfs_inode*,int ) ;
 int btrfs_log_all_parents (struct btrfs_trans_handle*,struct btrfs_inode*,struct btrfs_log_ctx*) ;
 int btrfs_log_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_inode*,int,int const,int const,struct btrfs_log_ctx*) ;
 int btrfs_remove_log_ctx (struct btrfs_root*,struct btrfs_log_ctx*) ;
 scalar_t__ btrfs_root_refs (int *) ;
 int btrfs_set_log_full_commit (struct btrfs_trans_handle*) ;
 scalar_t__ btrfs_test_opt (struct btrfs_fs_info*,int ) ;
 int check_parent_dirs_for_sync (struct btrfs_trans_handle*,struct btrfs_inode*,struct dentry*,struct super_block*,scalar_t__) ;
 int log_all_new_ancestors (struct btrfs_trans_handle*,struct btrfs_inode*,struct dentry*,struct btrfs_log_ctx*) ;
 int log_new_dir_dentries (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_inode*,struct btrfs_log_ctx*) ;
 int start_log_trans (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_log_ctx*) ;

__attribute__((used)) static int btrfs_log_inode_parent(struct btrfs_trans_handle *trans,
      struct btrfs_inode *inode,
      struct dentry *parent,
      const loff_t start,
      const loff_t end,
      int inode_only,
      struct btrfs_log_ctx *ctx)
{
 struct btrfs_root *root = inode->root;
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct super_block *sb;
 int ret = 0;
 u64 last_committed = fs_info->last_trans_committed;
 bool log_dentries = 0;

 sb = inode->vfs_inode.i_sb;

 if (btrfs_test_opt(fs_info, NOTREELOG)) {
  ret = 1;
  goto end_no_trans;
 }





 if (fs_info->last_trans_log_full_commit >
     fs_info->last_trans_committed) {
  ret = 1;
  goto end_no_trans;
 }

 if (btrfs_root_refs(&root->root_item) == 0) {
  ret = 1;
  goto end_no_trans;
 }

 ret = check_parent_dirs_for_sync(trans, inode, parent, sb,
   last_committed);
 if (ret)
  goto end_no_trans;






 if (btrfs_inode_in_log(inode, trans->transid) ||
     inode->vfs_inode.i_nlink == 0) {
  ret = BTRFS_NO_LOG_SYNC;
  goto end_no_trans;
 }

 ret = start_log_trans(trans, root, ctx);
 if (ret)
  goto end_no_trans;

 ret = btrfs_log_inode(trans, root, inode, inode_only, start, end, ctx);
 if (ret)
  goto end_trans;







 if (S_ISREG(inode->vfs_inode.i_mode) &&
     inode->generation <= last_committed &&
     inode->last_unlink_trans <= last_committed) {
  ret = 0;
  goto end_trans;
 }

 if (S_ISDIR(inode->vfs_inode.i_mode) && ctx && ctx->log_new_dentries)
  log_dentries = 1;
 if (inode->last_unlink_trans > last_committed) {
  ret = btrfs_log_all_parents(trans, inode, ctx);
  if (ret)
   goto end_trans;
 }

 ret = log_all_new_ancestors(trans, inode, parent, ctx);
 if (ret)
  goto end_trans;

 if (log_dentries)
  ret = log_new_dir_dentries(trans, root, inode, ctx);
 else
  ret = 0;
end_trans:
 if (ret < 0) {
  btrfs_set_log_full_commit(trans);
  ret = 1;
 }

 if (ret)
  btrfs_remove_log_ctx(root, ctx);
 btrfs_end_log_trans(root);
end_no_trans:
 return ret;
}
