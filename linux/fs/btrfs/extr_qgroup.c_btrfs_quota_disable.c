
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int commit_root; int node; int dirty_list; int root_key; } ;
struct btrfs_fs_info {int qgroup_ioctl_lock; int qgroup_lock; int qgroup_flags; struct btrfs_root* quota_root; int flags; int tree_root; } ;


 int BTRFS_FS_QUOTA_ENABLED ;
 int BTRFS_QGROUP_STATUS_FLAG_ON ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 int btrfs_clean_quota_tree (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int btrfs_clean_tree_block (int ) ;
 int btrfs_del_root (struct btrfs_trans_handle*,int *) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 int btrfs_free_qgroup_config (struct btrfs_fs_info*) ;
 int btrfs_free_tree_block (struct btrfs_trans_handle*,struct btrfs_root*,int ,int ,int) ;
 int btrfs_qgroup_wait_for_completion (struct btrfs_fs_info*,int) ;
 struct btrfs_trans_handle* btrfs_start_transaction (int ,int) ;
 int btrfs_tree_lock (int ) ;
 int btrfs_tree_unlock (int ) ;
 int clear_bit (int ,int *) ;
 int free_extent_buffer (int ) ;
 int kfree (struct btrfs_root*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btrfs_quota_disable(struct btrfs_fs_info *fs_info)
{
 struct btrfs_root *quota_root;
 struct btrfs_trans_handle *trans = ((void*)0);
 int ret = 0;

 mutex_lock(&fs_info->qgroup_ioctl_lock);
 if (!fs_info->quota_root)
  goto out;







 trans = btrfs_start_transaction(fs_info->tree_root, 1);
 if (IS_ERR(trans)) {
  ret = PTR_ERR(trans);
  goto out;
 }

 clear_bit(BTRFS_FS_QUOTA_ENABLED, &fs_info->flags);
 btrfs_qgroup_wait_for_completion(fs_info, 0);
 spin_lock(&fs_info->qgroup_lock);
 quota_root = fs_info->quota_root;
 fs_info->quota_root = ((void*)0);
 fs_info->qgroup_flags &= ~BTRFS_QGROUP_STATUS_FLAG_ON;
 spin_unlock(&fs_info->qgroup_lock);

 btrfs_free_qgroup_config(fs_info);

 ret = btrfs_clean_quota_tree(trans, quota_root);
 if (ret) {
  btrfs_abort_transaction(trans, ret);
  goto end_trans;
 }

 ret = btrfs_del_root(trans, &quota_root->root_key);
 if (ret) {
  btrfs_abort_transaction(trans, ret);
  goto end_trans;
 }

 list_del(&quota_root->dirty_list);

 btrfs_tree_lock(quota_root->node);
 btrfs_clean_tree_block(quota_root->node);
 btrfs_tree_unlock(quota_root->node);
 btrfs_free_tree_block(trans, quota_root, quota_root->node, 0, 1);

 free_extent_buffer(quota_root->node);
 free_extent_buffer(quota_root->commit_root);
 kfree(quota_root);

end_trans:
 ret = btrfs_end_transaction(trans);
out:
 mutex_unlock(&fs_info->qgroup_ioctl_lock);
 return ret;
}
