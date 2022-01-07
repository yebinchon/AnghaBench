
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct send_ctx {TYPE_1__* cmp_key; struct btrfs_root* send_root; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct TYPE_2__ {scalar_t__ objectid; } ;


 scalar_t__ BTRFS_XATTR_ITEM_KEY ;
 int ENOMEM ;
 int __process_new_xattr ;
 struct btrfs_path* alloc_path_for_send () ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_item_key_to_cpu (struct extent_buffer*,struct btrfs_key*,int) ;
 int btrfs_next_leaf (struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;
 int iterate_dir_item (struct btrfs_root*,struct btrfs_path*,int ,struct send_ctx*) ;

__attribute__((used)) static int process_all_new_xattrs(struct send_ctx *sctx)
{
 int ret;
 struct btrfs_root *root;
 struct btrfs_path *path;
 struct btrfs_key key;
 struct btrfs_key found_key;
 struct extent_buffer *eb;
 int slot;

 path = alloc_path_for_send();
 if (!path)
  return -ENOMEM;

 root = sctx->send_root;

 key.objectid = sctx->cmp_key->objectid;
 key.type = BTRFS_XATTR_ITEM_KEY;
 key.offset = 0;
 ret = btrfs_search_slot(((void*)0), root, &key, path, 0, 0);
 if (ret < 0)
  goto out;

 while (1) {
  eb = path->nodes[0];
  slot = path->slots[0];
  if (slot >= btrfs_header_nritems(eb)) {
   ret = btrfs_next_leaf(root, path);
   if (ret < 0) {
    goto out;
   } else if (ret > 0) {
    ret = 0;
    break;
   }
   continue;
  }

  btrfs_item_key_to_cpu(eb, &found_key, slot);
  if (found_key.objectid != key.objectid ||
      found_key.type != key.type) {
   ret = 0;
   goto out;
  }

  ret = iterate_dir_item(root, path, __process_new_xattr, sctx);
  if (ret < 0)
   goto out;

  path->slots[0]++;
 }

out:
 btrfs_free_path(path);
 return ret;
}
