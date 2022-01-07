
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_item {int dummy; } ;


 int btrfs_item_ptr_offset (struct extent_buffer*,scalar_t__) ;
 scalar_t__ btrfs_item_size_nr (struct extent_buffer*,scalar_t__) ;
 int memcpy_extent_buffer (struct extent_buffer*,int ,int ,scalar_t__) ;
 int setup_items_for_insert (struct btrfs_root*,struct btrfs_path*,struct btrfs_key const*,scalar_t__*,scalar_t__,scalar_t__,int) ;
 int setup_leaf_for_split (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,scalar_t__) ;

int btrfs_duplicate_item(struct btrfs_trans_handle *trans,
    struct btrfs_root *root,
    struct btrfs_path *path,
    const struct btrfs_key *new_key)
{
 struct extent_buffer *leaf;
 int ret;
 u32 item_size;

 leaf = path->nodes[0];
 item_size = btrfs_item_size_nr(leaf, path->slots[0]);
 ret = setup_leaf_for_split(trans, root, path,
       item_size + sizeof(struct btrfs_item));
 if (ret)
  return ret;

 path->slots[0]++;
 setup_items_for_insert(root, path, new_key, &item_size,
          item_size, item_size +
          sizeof(struct btrfs_item), 1);
 leaf = path->nodes[0];
 memcpy_extent_buffer(leaf,
        btrfs_item_ptr_offset(leaf, path->slots[0]),
        btrfs_item_ptr_offset(leaf, path->slots[0] - 1),
        item_size);
 return 0;
}
