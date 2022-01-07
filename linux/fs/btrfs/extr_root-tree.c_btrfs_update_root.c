
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root_item {int dummy; } ;
struct TYPE_2__ {int objectid; } ;
struct btrfs_root {TYPE_1__ root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int offset; int type; int objectid; } ;
struct btrfs_fs_info {int dummy; } ;


 int ENOMEM ;
 int EUCLEAN ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_crit (struct btrfs_fs_info*,char*,int ,int ,int ,int ) ;
 int btrfs_del_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_insert_empty_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int) ;
 unsigned long btrfs_item_ptr_offset (struct extent_buffer*,int) ;
 int btrfs_item_size_nr (struct extent_buffer*,int) ;
 int btrfs_mark_buffer_dirty (struct extent_buffer*) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_root_generation (struct btrfs_root_item*) ;
 int btrfs_search_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ;
 int btrfs_set_root_generation_v2 (struct btrfs_root_item*,int ) ;
 int write_extent_buffer (struct extent_buffer*,struct btrfs_root_item*,unsigned long,int) ;

int btrfs_update_root(struct btrfs_trans_handle *trans, struct btrfs_root
        *root, struct btrfs_key *key, struct btrfs_root_item
        *item)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_path *path;
 struct extent_buffer *l;
 int ret;
 int slot;
 unsigned long ptr;
 u32 old_len;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 ret = btrfs_search_slot(trans, root, key, path, 0, 1);
 if (ret < 0)
  goto out;

 if (ret > 0) {
  btrfs_crit(fs_info,
   "unable to find root key (%llu %u %llu) in tree %llu",
   key->objectid, key->type, key->offset,
   root->root_key.objectid);
  ret = -EUCLEAN;
  btrfs_abort_transaction(trans, ret);
  goto out;
 }

 l = path->nodes[0];
 slot = path->slots[0];
 ptr = btrfs_item_ptr_offset(l, slot);
 old_len = btrfs_item_size_nr(l, slot);






 if (old_len < sizeof(*item)) {
  btrfs_release_path(path);
  ret = btrfs_search_slot(trans, root, key, path,
    -1, 1);
  if (ret < 0) {
   btrfs_abort_transaction(trans, ret);
   goto out;
  }

  ret = btrfs_del_item(trans, root, path);
  if (ret < 0) {
   btrfs_abort_transaction(trans, ret);
   goto out;
  }
  btrfs_release_path(path);
  ret = btrfs_insert_empty_item(trans, root, path,
    key, sizeof(*item));
  if (ret < 0) {
   btrfs_abort_transaction(trans, ret);
   goto out;
  }
  l = path->nodes[0];
  slot = path->slots[0];
  ptr = btrfs_item_ptr_offset(l, slot);
 }





 btrfs_set_root_generation_v2(item, btrfs_root_generation(item));

 write_extent_buffer(l, item, ptr, sizeof(*item));
 btrfs_mark_buffer_dirty(path->nodes[0]);
out:
 btrfs_free_path(path);
 return ret;
}
