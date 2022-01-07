
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef scalar_t__ u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int * slots; int * nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ offset; void* type; } ;
struct TYPE_4__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_block_group_cache {TYPE_2__ key; TYPE_1__* fs_info; } ;
struct TYPE_3__ {scalar_t__ sectorsize; struct btrfs_root* free_space_root; } ;


 int btrfs_item_key_to_cpu (int ,struct btrfs_key*,int ) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_search_prev_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int) ;
 int free_space_next_bitmap (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ;
 int free_space_set_bits (struct btrfs_block_group_cache*,struct btrfs_path*,scalar_t__*,scalar_t__*,int) ;
 int free_space_test_bit (struct btrfs_block_group_cache*,struct btrfs_path*,scalar_t__) ;
 int update_free_space_extent_count (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*,int) ;

__attribute__((used)) static int modify_free_space_bitmap(struct btrfs_trans_handle *trans,
        struct btrfs_block_group_cache *block_group,
        struct btrfs_path *path,
        u64 start, u64 size, int remove)
{
 struct btrfs_root *root = block_group->fs_info->free_space_root;
 struct btrfs_key key;
 u64 end = start + size;
 u64 cur_start, cur_size;
 int prev_bit, next_bit;
 int new_extents;
 int ret;





 if (start > block_group->key.objectid) {
  u64 prev_block = start - block_group->fs_info->sectorsize;

  key.objectid = prev_block;
  key.type = (u8)-1;
  key.offset = (u64)-1;

  ret = btrfs_search_prev_slot(trans, root, &key, path, 0, 1);
  if (ret)
   goto out;

  prev_bit = free_space_test_bit(block_group, path, prev_block);


  btrfs_item_key_to_cpu(path->nodes[0], &key, path->slots[0]);
  if (start >= key.objectid + key.offset) {
   ret = free_space_next_bitmap(trans, root, path);
   if (ret)
    goto out;
  }
 } else {
  key.objectid = start;
  key.type = (u8)-1;
  key.offset = (u64)-1;

  ret = btrfs_search_prev_slot(trans, root, &key, path, 0, 1);
  if (ret)
   goto out;

  prev_bit = -1;
 }





 cur_start = start;
 cur_size = size;
 while (1) {
  free_space_set_bits(block_group, path, &cur_start, &cur_size,
        !remove);
  if (cur_size == 0)
   break;
  ret = free_space_next_bitmap(trans, root, path);
  if (ret)
   goto out;
 }





 if (end < block_group->key.objectid + block_group->key.offset) {

  btrfs_item_key_to_cpu(path->nodes[0], &key, path->slots[0]);
  if (end >= key.objectid + key.offset) {
   ret = free_space_next_bitmap(trans, root, path);
   if (ret)
    goto out;
  }

  next_bit = free_space_test_bit(block_group, path, end);
 } else {
  next_bit = -1;
 }

 if (remove) {
  new_extents = -1;
  if (prev_bit == 1) {

   new_extents++;
  }
  if (next_bit == 1) {

   new_extents++;
  }
 } else {
  new_extents = 1;
  if (prev_bit == 1) {

   new_extents--;
  }
  if (next_bit == 1) {

   new_extents--;
  }
 }

 btrfs_release_path(path);
 ret = update_free_space_extent_count(trans, block_group, path,
          new_extents);

out:
 return ret;
}
