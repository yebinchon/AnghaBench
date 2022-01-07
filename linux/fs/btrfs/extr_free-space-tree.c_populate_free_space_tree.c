
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_trans_handle {TYPE_1__* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int * slots; int * nodes; int reada; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; scalar_t__ offset; } ;
struct TYPE_4__ {scalar_t__ objectid; scalar_t__ offset; } ;
struct btrfs_block_group_cache {int free_space_lock; TYPE_2__ key; } ;
struct TYPE_3__ {scalar_t__ nodesize; struct btrfs_root* extent_root; } ;


 int ASSERT (int) ;
 scalar_t__ BTRFS_BLOCK_GROUP_ITEM_KEY ;
 scalar_t__ BTRFS_EXTENT_ITEM_KEY ;
 scalar_t__ BTRFS_METADATA_ITEM_KEY ;
 int ENOMEM ;
 int READA_FORWARD ;
 int __add_to_free_space_tree (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*,scalar_t__,scalar_t__) ;
 int add_new_free_space_info (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_item_key_to_cpu (int ,struct btrfs_key*,int ) ;
 int btrfs_next_item (struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_search_slot_for_read (struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int populate_free_space_tree(struct btrfs_trans_handle *trans,
        struct btrfs_block_group_cache *block_group)
{
 struct btrfs_root *extent_root = trans->fs_info->extent_root;
 struct btrfs_path *path, *path2;
 struct btrfs_key key;
 u64 start, end;
 int ret;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;
 path->reada = READA_FORWARD;

 path2 = btrfs_alloc_path();
 if (!path2) {
  btrfs_free_path(path);
  return -ENOMEM;
 }

 ret = add_new_free_space_info(trans, block_group, path2);
 if (ret)
  goto out;

 mutex_lock(&block_group->free_space_lock);
 key.objectid = block_group->key.objectid;
 key.type = BTRFS_EXTENT_ITEM_KEY;
 key.offset = 0;

 ret = btrfs_search_slot_for_read(extent_root, &key, path, 1, 0);
 if (ret < 0)
  goto out_locked;
 ASSERT(ret == 0);

 start = block_group->key.objectid;
 end = block_group->key.objectid + block_group->key.offset;
 while (1) {
  btrfs_item_key_to_cpu(path->nodes[0], &key, path->slots[0]);

  if (key.type == BTRFS_EXTENT_ITEM_KEY ||
      key.type == BTRFS_METADATA_ITEM_KEY) {
   if (key.objectid >= end)
    break;

   if (start < key.objectid) {
    ret = __add_to_free_space_tree(trans,
              block_group,
              path2, start,
              key.objectid -
              start);
    if (ret)
     goto out_locked;
   }
   start = key.objectid;
   if (key.type == BTRFS_METADATA_ITEM_KEY)
    start += trans->fs_info->nodesize;
   else
    start += key.offset;
  } else if (key.type == BTRFS_BLOCK_GROUP_ITEM_KEY) {
   if (key.objectid != block_group->key.objectid)
    break;
  }

  ret = btrfs_next_item(extent_root, path);
  if (ret < 0)
   goto out_locked;
  if (ret)
   break;
 }
 if (start < end) {
  ret = __add_to_free_space_tree(trans, block_group, path2,
            start, end - start);
  if (ret)
   goto out_locked;
 }

 ret = 0;
out_locked:
 mutex_unlock(&block_group->free_space_lock);
out:
 btrfs_free_path(path2);
 btrfs_free_path(path);
 return ret;
}
