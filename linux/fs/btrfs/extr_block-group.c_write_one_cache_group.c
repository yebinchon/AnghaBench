
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {struct btrfs_fs_info* fs_info; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int * slots; struct extent_buffer** nodes; } ;
struct btrfs_fs_info {struct btrfs_root* extent_root; } ;
struct btrfs_block_group_cache {int item; int key; } ;


 int ENOENT ;
 unsigned long btrfs_item_ptr_offset (struct extent_buffer*,int ) ;
 int btrfs_mark_buffer_dirty (struct extent_buffer*) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_search_slot (struct btrfs_trans_handle*,struct btrfs_root*,int *,struct btrfs_path*,int ,int) ;
 int write_extent_buffer (struct extent_buffer*,int *,unsigned long,int) ;

__attribute__((used)) static int write_one_cache_group(struct btrfs_trans_handle *trans,
     struct btrfs_path *path,
     struct btrfs_block_group_cache *cache)
{
 struct btrfs_fs_info *fs_info = trans->fs_info;
 int ret;
 struct btrfs_root *extent_root = fs_info->extent_root;
 unsigned long bi;
 struct extent_buffer *leaf;

 ret = btrfs_search_slot(trans, extent_root, &cache->key, path, 0, 1);
 if (ret) {
  if (ret > 0)
   ret = -ENOENT;
  goto fail;
 }

 leaf = path->nodes[0];
 bi = btrfs_item_ptr_offset(leaf, path->slots[0]);
 write_extent_buffer(leaf, &cache->item, bi, sizeof(cache->item));
 btrfs_mark_buffer_dirty(leaf);
fail:
 btrfs_release_path(path);
 return ret;

}
