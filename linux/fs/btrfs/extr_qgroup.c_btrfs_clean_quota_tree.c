
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int leave_spinning; scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ type; scalar_t__ offset; scalar_t__ objectid; } ;


 int ENOMEM ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_del_items (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,int ,int) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_search_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ;

__attribute__((used)) static int btrfs_clean_quota_tree(struct btrfs_trans_handle *trans,
      struct btrfs_root *root)
{
 struct btrfs_path *path;
 struct btrfs_key key;
 struct extent_buffer *leaf = ((void*)0);
 int ret;
 int nr = 0;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 path->leave_spinning = 1;

 key.objectid = 0;
 key.offset = 0;
 key.type = 0;

 while (1) {
  ret = btrfs_search_slot(trans, root, &key, path, -1, 1);
  if (ret < 0)
   goto out;
  leaf = path->nodes[0];
  nr = btrfs_header_nritems(leaf);
  if (!nr)
   break;





  path->slots[0] = 0;
  ret = btrfs_del_items(trans, root, path, 0, nr);
  if (ret)
   goto out;

  btrfs_release_path(path);
 }
 ret = 0;
out:
 btrfs_free_path(path);
 return ret;
}
