
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct extent_buffer {int dummy; } ;
struct dentry {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_log_ctx {int dummy; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct TYPE_2__ {int i_nlink; } ;
struct btrfs_inode {TYPE_1__ vfs_inode; struct btrfs_root* root; } ;
typedef int search_key ;


 scalar_t__ BTRFS_INODE_EXTREF_KEY ;
 scalar_t__ BTRFS_INODE_REF_KEY ;
 int EMLINK ;
 int ENOMEM ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_header_nritems (struct extent_buffer*) ;
 scalar_t__ btrfs_ino (struct btrfs_inode*) ;
 int btrfs_item_key_to_cpu (struct extent_buffer*,struct btrfs_key*,int) ;
 int btrfs_next_leaf (struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;
 int log_new_ancestors (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_log_ctx*) ;
 int log_new_ancestors_fast (struct btrfs_trans_handle*,struct btrfs_inode*,struct dentry*,struct btrfs_log_ctx*) ;
 int memcpy (struct btrfs_key*,struct btrfs_key*,int) ;

__attribute__((used)) static int log_all_new_ancestors(struct btrfs_trans_handle *trans,
     struct btrfs_inode *inode,
     struct dentry *parent,
     struct btrfs_log_ctx *ctx)
{
 struct btrfs_root *root = inode->root;
 const u64 ino = btrfs_ino(inode);
 struct btrfs_path *path;
 struct btrfs_key search_key;
 int ret;





 if (inode->vfs_inode.i_nlink < 2)
  return log_new_ancestors_fast(trans, inode, parent, ctx);

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 search_key.objectid = ino;
 search_key.type = BTRFS_INODE_REF_KEY;
 search_key.offset = 0;
again:
 ret = btrfs_search_slot(((void*)0), root, &search_key, path, 0, 0);
 if (ret < 0)
  goto out;
 if (ret == 0)
  path->slots[0]++;

 while (1) {
  struct extent_buffer *leaf = path->nodes[0];
  int slot = path->slots[0];
  struct btrfs_key found_key;

  if (slot >= btrfs_header_nritems(leaf)) {
   ret = btrfs_next_leaf(root, path);
   if (ret < 0)
    goto out;
   else if (ret > 0)
    break;
   continue;
  }

  btrfs_item_key_to_cpu(leaf, &found_key, slot);
  if (found_key.objectid != ino ||
      found_key.type > BTRFS_INODE_EXTREF_KEY)
   break;
  if (found_key.type == BTRFS_INODE_EXTREF_KEY) {
   ret = -EMLINK;
   goto out;
  }







  memcpy(&search_key, &found_key, sizeof(search_key));

  ret = log_new_ancestors(trans, root, path, ctx);
  if (ret)
   goto out;
  btrfs_release_path(path);
  goto again;
 }
 ret = 0;
out:
 btrfs_free_path(path);
 return ret;
}
