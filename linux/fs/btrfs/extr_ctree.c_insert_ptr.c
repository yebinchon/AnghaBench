
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int transid; int fs_info; } ;
struct btrfs_path {struct extent_buffer** nodes; } ;
struct btrfs_key_ptr {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;


 int BTRFS_NODEPTRS_PER_BLOCK (int ) ;
 int BUG_ON (int) ;
 int GFP_NOFS ;
 int MOD_LOG_KEY_ADD ;
 int WARN_ON (int) ;
 int btrfs_assert_tree_locked (struct extent_buffer*) ;
 int btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_mark_buffer_dirty (struct extent_buffer*) ;
 int btrfs_node_key_ptr_offset (int) ;
 int btrfs_set_header_nritems (struct extent_buffer*,int) ;
 int btrfs_set_node_blockptr (struct extent_buffer*,int,int ) ;
 int btrfs_set_node_key (struct extent_buffer*,struct btrfs_disk_key*,int) ;
 int btrfs_set_node_ptr_generation (struct extent_buffer*,int,int ) ;
 int memmove_extent_buffer (struct extent_buffer*,int ,int ,int) ;
 int tree_mod_log_insert_key (struct extent_buffer*,int,int ,int ) ;
 int tree_mod_log_insert_move (struct extent_buffer*,int,int,int) ;

__attribute__((used)) static void insert_ptr(struct btrfs_trans_handle *trans,
         struct btrfs_path *path,
         struct btrfs_disk_key *key, u64 bytenr,
         int slot, int level)
{
 struct extent_buffer *lower;
 int nritems;
 int ret;

 BUG_ON(!path->nodes[level]);
 btrfs_assert_tree_locked(path->nodes[level]);
 lower = path->nodes[level];
 nritems = btrfs_header_nritems(lower);
 BUG_ON(slot > nritems);
 BUG_ON(nritems == BTRFS_NODEPTRS_PER_BLOCK(trans->fs_info));
 if (slot != nritems) {
  if (level) {
   ret = tree_mod_log_insert_move(lower, slot + 1, slot,
     nritems - slot);
   BUG_ON(ret < 0);
  }
  memmove_extent_buffer(lower,
         btrfs_node_key_ptr_offset(slot + 1),
         btrfs_node_key_ptr_offset(slot),
         (nritems - slot) * sizeof(struct btrfs_key_ptr));
 }
 if (level) {
  ret = tree_mod_log_insert_key(lower, slot, MOD_LOG_KEY_ADD,
    GFP_NOFS);
  BUG_ON(ret < 0);
 }
 btrfs_set_node_key(lower, key, slot);
 btrfs_set_node_blockptr(lower, slot, bytenr);
 WARN_ON(trans->transid == 0);
 btrfs_set_node_ptr_generation(lower, slot, trans->transid);
 btrfs_set_header_nritems(lower, nritems + 1);
 btrfs_mark_buffer_dirty(lower);
}
