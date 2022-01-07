
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int commit_root; int node; int dirty_list; int root_key; } ;
struct btrfs_fs_info {struct btrfs_root* free_space_root; struct btrfs_root* tree_root; } ;


 int FREE_SPACE_TREE ;
 int FREE_SPACE_TREE_VALID ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 int btrfs_clean_tree_block (int ) ;
 int btrfs_clear_fs_compat_ro (struct btrfs_fs_info*,int ) ;
 int btrfs_commit_transaction (struct btrfs_trans_handle*) ;
 int btrfs_del_root (struct btrfs_trans_handle*,int *) ;
 int btrfs_end_transaction (struct btrfs_trans_handle*) ;
 int btrfs_free_tree_block (struct btrfs_trans_handle*,struct btrfs_root*,int ,int ,int) ;
 struct btrfs_trans_handle* btrfs_start_transaction (struct btrfs_root*,int ) ;
 int btrfs_tree_lock (int ) ;
 int btrfs_tree_unlock (int ) ;
 int clear_free_space_tree (struct btrfs_trans_handle*,struct btrfs_root*) ;
 int free_extent_buffer (int ) ;
 int kfree (struct btrfs_root*) ;
 int list_del (int *) ;

int btrfs_clear_free_space_tree(struct btrfs_fs_info *fs_info)
{
 struct btrfs_trans_handle *trans;
 struct btrfs_root *tree_root = fs_info->tree_root;
 struct btrfs_root *free_space_root = fs_info->free_space_root;
 int ret;

 trans = btrfs_start_transaction(tree_root, 0);
 if (IS_ERR(trans))
  return PTR_ERR(trans);

 btrfs_clear_fs_compat_ro(fs_info, FREE_SPACE_TREE);
 btrfs_clear_fs_compat_ro(fs_info, FREE_SPACE_TREE_VALID);
 fs_info->free_space_root = ((void*)0);

 ret = clear_free_space_tree(trans, free_space_root);
 if (ret)
  goto abort;

 ret = btrfs_del_root(trans, &free_space_root->root_key);
 if (ret)
  goto abort;

 list_del(&free_space_root->dirty_list);

 btrfs_tree_lock(free_space_root->node);
 btrfs_clean_tree_block(free_space_root->node);
 btrfs_tree_unlock(free_space_root->node);
 btrfs_free_tree_block(trans, free_space_root, free_space_root->node,
         0, 1);

 free_extent_buffer(free_space_root->node);
 free_extent_buffer(free_space_root->commit_root);
 kfree(free_space_root);

 return btrfs_commit_transaction(trans);

abort:
 btrfs_abort_transaction(trans, ret);
 btrfs_end_transaction(trans);
 return ret;
}
