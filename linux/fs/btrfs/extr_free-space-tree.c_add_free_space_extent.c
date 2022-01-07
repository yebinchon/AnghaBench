
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef scalar_t__ u64 ;
struct btrfs_trans_handle {TYPE_1__* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int * slots; int * nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct TYPE_4__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_block_group_cache {TYPE_2__ key; } ;
struct TYPE_3__ {struct btrfs_root* free_space_root; } ;


 int ASSERT (int) ;
 scalar_t__ BTRFS_FREE_SPACE_EXTENT_KEY ;
 scalar_t__ BTRFS_FREE_SPACE_INFO_KEY ;
 int btrfs_del_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_insert_empty_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int ) ;
 int btrfs_item_key_to_cpu (int ,struct btrfs_key*,int ) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_search_prev_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ;
 int update_free_space_extent_count (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*,int) ;

__attribute__((used)) static int add_free_space_extent(struct btrfs_trans_handle *trans,
     struct btrfs_block_group_cache *block_group,
     struct btrfs_path *path,
     u64 start, u64 size)
{
 struct btrfs_root *root = trans->fs_info->free_space_root;
 struct btrfs_key key, new_key;
 u64 found_start, found_end;
 u64 end = start + size;
 int new_extents = 1;
 int ret;
 new_key.objectid = start;
 new_key.type = BTRFS_FREE_SPACE_EXTENT_KEY;
 new_key.offset = size;


 if (start == block_group->key.objectid)
  goto right;
 key.objectid = start - 1;
 key.type = (u8)-1;
 key.offset = (u64)-1;

 ret = btrfs_search_prev_slot(trans, root, &key, path, -1, 1);
 if (ret)
  goto out;

 btrfs_item_key_to_cpu(path->nodes[0], &key, path->slots[0]);

 if (key.type != BTRFS_FREE_SPACE_EXTENT_KEY) {
  ASSERT(key.type == BTRFS_FREE_SPACE_INFO_KEY);
  btrfs_release_path(path);
  goto right;
 }

 found_start = key.objectid;
 found_end = key.objectid + key.offset;
 ASSERT(found_start >= block_group->key.objectid &&
        found_end > block_group->key.objectid);
 ASSERT(found_start < start && found_end <= start);





 if (found_end == start) {
  ret = btrfs_del_item(trans, root, path);
  if (ret)
   goto out;
  new_key.objectid = found_start;
  new_key.offset += key.offset;
  new_extents--;
 }
 btrfs_release_path(path);

right:

 if (end == block_group->key.objectid + block_group->key.offset)
  goto insert;
 key.objectid = end;
 key.type = (u8)-1;
 key.offset = (u64)-1;

 ret = btrfs_search_prev_slot(trans, root, &key, path, -1, 1);
 if (ret)
  goto out;

 btrfs_item_key_to_cpu(path->nodes[0], &key, path->slots[0]);

 if (key.type != BTRFS_FREE_SPACE_EXTENT_KEY) {
  ASSERT(key.type == BTRFS_FREE_SPACE_INFO_KEY);
  btrfs_release_path(path);
  goto insert;
 }

 found_start = key.objectid;
 found_end = key.objectid + key.offset;
 ASSERT(found_start >= block_group->key.objectid &&
        found_end > block_group->key.objectid);
 ASSERT((found_start < start && found_end <= start) ||
        (found_start >= end && found_end > end));





 if (found_start == end) {
  ret = btrfs_del_item(trans, root, path);
  if (ret)
   goto out;
  new_key.offset += key.offset;
  new_extents--;
 }
 btrfs_release_path(path);

insert:

 ret = btrfs_insert_empty_item(trans, root, path, &new_key, 0);
 if (ret)
  goto out;

 btrfs_release_path(path);
 ret = update_free_space_extent_count(trans, block_group, path,
          new_extents);

out:
 return ret;
}
