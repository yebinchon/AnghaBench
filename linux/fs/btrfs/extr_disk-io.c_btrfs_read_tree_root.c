
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_root {int commit_root; int node; int root_item; int root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_key {int objectid; } ;
struct btrfs_fs_info {int dummy; } ;


 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 struct btrfs_root* ERR_PTR (int) ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int __setup_root (struct btrfs_root*,struct btrfs_fs_info*,int ) ;
 struct btrfs_path* btrfs_alloc_path () ;
 struct btrfs_root* btrfs_alloc_root (struct btrfs_fs_info*,int ) ;
 int btrfs_buffer_uptodate (int ,int ,int ) ;
 int btrfs_find_root (struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int *,int *) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_root_bytenr (int *) ;
 int btrfs_root_generation (int *) ;
 int btrfs_root_level (int *) ;
 int btrfs_root_node (struct btrfs_root*) ;
 int free_extent_buffer (int ) ;
 int kfree (struct btrfs_root*) ;
 int read_tree_block (struct btrfs_fs_info*,int ,int ,int,int *) ;

__attribute__((used)) static struct btrfs_root *btrfs_read_tree_root(struct btrfs_root *tree_root,
            struct btrfs_key *key)
{
 struct btrfs_root *root;
 struct btrfs_fs_info *fs_info = tree_root->fs_info;
 struct btrfs_path *path;
 u64 generation;
 int ret;
 int level;

 path = btrfs_alloc_path();
 if (!path)
  return ERR_PTR(-ENOMEM);

 root = btrfs_alloc_root(fs_info, GFP_NOFS);
 if (!root) {
  ret = -ENOMEM;
  goto alloc_fail;
 }

 __setup_root(root, fs_info, key->objectid);

 ret = btrfs_find_root(tree_root, key, path,
         &root->root_item, &root->root_key);
 if (ret) {
  if (ret > 0)
   ret = -ENOENT;
  goto find_fail;
 }

 generation = btrfs_root_generation(&root->root_item);
 level = btrfs_root_level(&root->root_item);
 root->node = read_tree_block(fs_info,
         btrfs_root_bytenr(&root->root_item),
         generation, level, ((void*)0));
 if (IS_ERR(root->node)) {
  ret = PTR_ERR(root->node);
  goto find_fail;
 } else if (!btrfs_buffer_uptodate(root->node, generation, 0)) {
  ret = -EIO;
  free_extent_buffer(root->node);
  goto find_fail;
 }
 root->commit_root = btrfs_root_node(root);
out:
 btrfs_free_path(path);
 return root;

find_fail:
 kfree(root);
alloc_fail:
 root = ERR_PTR(ret);
 goto out;
}
