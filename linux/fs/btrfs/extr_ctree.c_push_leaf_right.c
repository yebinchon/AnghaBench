
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;


 scalar_t__ IS_ERR (struct extent_buffer*) ;
 int __push_leaf_right (struct btrfs_path*,int,int,struct extent_buffer*,int,int,int) ;
 int btrfs_assert_tree_locked (struct extent_buffer*) ;
 int btrfs_cow_block (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*,struct extent_buffer*,int,struct extent_buffer**) ;
 int btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_leaf_free_space (struct extent_buffer*) ;
 struct extent_buffer* btrfs_read_node_slot (struct extent_buffer*,int) ;
 int btrfs_set_lock_blocking_write (struct extent_buffer*) ;
 int btrfs_tree_lock (struct extent_buffer*) ;
 int btrfs_tree_unlock (struct extent_buffer*) ;
 int free_extent_buffer (struct extent_buffer*) ;

__attribute__((used)) static int push_leaf_right(struct btrfs_trans_handle *trans, struct btrfs_root
      *root, struct btrfs_path *path,
      int min_data_size, int data_size,
      int empty, u32 min_slot)
{
 struct extent_buffer *left = path->nodes[0];
 struct extent_buffer *right;
 struct extent_buffer *upper;
 int slot;
 int free_space;
 u32 left_nritems;
 int ret;

 if (!path->nodes[1])
  return 1;

 slot = path->slots[1];
 upper = path->nodes[1];
 if (slot >= btrfs_header_nritems(upper) - 1)
  return 1;

 btrfs_assert_tree_locked(path->nodes[1]);

 right = btrfs_read_node_slot(upper, slot + 1);




 if (IS_ERR(right))
  return 1;

 btrfs_tree_lock(right);
 btrfs_set_lock_blocking_write(right);

 free_space = btrfs_leaf_free_space(right);
 if (free_space < data_size)
  goto out_unlock;


 ret = btrfs_cow_block(trans, root, right, upper,
         slot + 1, &right);
 if (ret)
  goto out_unlock;

 free_space = btrfs_leaf_free_space(right);
 if (free_space < data_size)
  goto out_unlock;

 left_nritems = btrfs_header_nritems(left);
 if (left_nritems == 0)
  goto out_unlock;

 if (path->slots[0] == left_nritems && !empty) {




  btrfs_tree_unlock(left);
  free_extent_buffer(left);
  path->nodes[0] = right;
  path->slots[0] = 0;
  path->slots[1]++;
  return 0;
 }

 return __push_leaf_right(path, min_data_size, empty,
    right, free_space, left_nritems, min_slot);
out_unlock:
 btrfs_tree_unlock(right);
 free_extent_buffer(right);
 return 1;
}
