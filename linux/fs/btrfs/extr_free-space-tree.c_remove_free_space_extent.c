
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
struct btrfs_trans_handle {TYPE_1__* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int * slots; int * nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct btrfs_block_group_cache {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* free_space_root; } ;


 int ASSERT (int) ;
 scalar_t__ BTRFS_FREE_SPACE_EXTENT_KEY ;
 int btrfs_del_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_insert_empty_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int ) ;
 int btrfs_item_key_to_cpu (int ,struct btrfs_key*,int ) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_search_prev_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ;
 int update_free_space_extent_count (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*,int) ;

__attribute__((used)) static int remove_free_space_extent(struct btrfs_trans_handle *trans,
        struct btrfs_block_group_cache *block_group,
        struct btrfs_path *path,
        u64 start, u64 size)
{
 struct btrfs_root *root = trans->fs_info->free_space_root;
 struct btrfs_key key;
 u64 found_start, found_end;
 u64 end = start + size;
 int new_extents = -1;
 int ret;

 key.objectid = start;
 key.type = (u8)-1;
 key.offset = (u64)-1;

 ret = btrfs_search_prev_slot(trans, root, &key, path, -1, 1);
 if (ret)
  goto out;

 btrfs_item_key_to_cpu(path->nodes[0], &key, path->slots[0]);

 ASSERT(key.type == BTRFS_FREE_SPACE_EXTENT_KEY);

 found_start = key.objectid;
 found_end = key.objectid + key.offset;
 ASSERT(start >= found_start && end <= found_end);
 ret = btrfs_del_item(trans, root, path);
 if (ret)
  goto out;


 if (start > found_start) {
  key.objectid = found_start;
  key.type = BTRFS_FREE_SPACE_EXTENT_KEY;
  key.offset = start - found_start;

  btrfs_release_path(path);
  ret = btrfs_insert_empty_item(trans, root, path, &key, 0);
  if (ret)
   goto out;
  new_extents++;
 }


 if (end < found_end) {
  key.objectid = end;
  key.type = BTRFS_FREE_SPACE_EXTENT_KEY;
  key.offset = found_end - end;

  btrfs_release_path(path);
  ret = btrfs_insert_empty_item(trans, root, path, &key, 0);
  if (ret)
   goto out;
  new_extents++;
 }

 btrfs_release_path(path);
 ret = update_free_space_extent_count(trans, block_group, path,
          new_extents);

out:
 return ret;
}
