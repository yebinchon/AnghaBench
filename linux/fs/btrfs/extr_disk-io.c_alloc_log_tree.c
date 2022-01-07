
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct TYPE_2__ {void* offset; int type; void* objectid; } ;
struct btrfs_root {struct extent_buffer* node; TYPE_1__ root_key; } ;
struct btrfs_fs_info {int dummy; } ;


 int BTRFS_ROOT_ITEM_KEY ;
 void* BTRFS_TREE_LOG_OBJECTID ;
 int ENOMEM ;
 struct btrfs_root* ERR_CAST (struct extent_buffer*) ;
 struct btrfs_root* ERR_PTR (int ) ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct extent_buffer*) ;
 int __setup_root (struct btrfs_root*,struct btrfs_fs_info*,void*) ;
 struct btrfs_root* btrfs_alloc_root (struct btrfs_fs_info*,int ) ;
 struct extent_buffer* btrfs_alloc_tree_block (struct btrfs_trans_handle*,struct btrfs_root*,int ,void*,int *,int ,int ,int ) ;
 int btrfs_mark_buffer_dirty (struct extent_buffer*) ;
 int btrfs_tree_unlock (struct extent_buffer*) ;
 int kfree (struct btrfs_root*) ;

__attribute__((used)) static struct btrfs_root *alloc_log_tree(struct btrfs_trans_handle *trans,
      struct btrfs_fs_info *fs_info)
{
 struct btrfs_root *root;
 struct extent_buffer *leaf;

 root = btrfs_alloc_root(fs_info, GFP_NOFS);
 if (!root)
  return ERR_PTR(-ENOMEM);

 __setup_root(root, fs_info, BTRFS_TREE_LOG_OBJECTID);

 root->root_key.objectid = BTRFS_TREE_LOG_OBJECTID;
 root->root_key.type = BTRFS_ROOT_ITEM_KEY;
 root->root_key.offset = BTRFS_TREE_LOG_OBJECTID;
 leaf = btrfs_alloc_tree_block(trans, root, 0, BTRFS_TREE_LOG_OBJECTID,
   ((void*)0), 0, 0, 0);
 if (IS_ERR(leaf)) {
  kfree(root);
  return ERR_CAST(leaf);
 }

 root->node = leaf;

 btrfs_mark_buffer_dirty(root->node);
 btrfs_tree_unlock(root->node);
 return root;
}
