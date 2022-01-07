
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int fs_info; } ;
struct btrfs_path {int leave_spinning; int * slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int offset; int type; int objectid; } ;
struct btrfs_inode_extref {int dummy; } ;


 int BTRFS_INODE_EXTREF_KEY ;
 int ENOENT ;
 int ENOMEM ;
 int EROFS ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_del_item (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_extref_hash (int ,char const*,int) ;
 struct btrfs_inode_extref* btrfs_find_name_in_ext_backref (struct extent_buffer*,int ,int ,char const*,int) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_handle_fs_error (int ,int,int *) ;
 int btrfs_inode_extref_index (struct extent_buffer*,struct btrfs_inode_extref*) ;
 unsigned long btrfs_item_ptr_offset (struct extent_buffer*,int ) ;
 int btrfs_item_size_nr (struct extent_buffer*,int ) ;
 int btrfs_search_slot (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ;
 int btrfs_truncate_item (struct btrfs_path*,int,int) ;
 int memmove_extent_buffer (struct extent_buffer*,unsigned long,unsigned long,int) ;

__attribute__((used)) static int btrfs_del_inode_extref(struct btrfs_trans_handle *trans,
      struct btrfs_root *root,
      const char *name, int name_len,
      u64 inode_objectid, u64 ref_objectid,
      u64 *index)
{
 struct btrfs_path *path;
 struct btrfs_key key;
 struct btrfs_inode_extref *extref;
 struct extent_buffer *leaf;
 int ret;
 int del_len = name_len + sizeof(*extref);
 unsigned long ptr;
 unsigned long item_start;
 u32 item_size;

 key.objectid = inode_objectid;
 key.type = BTRFS_INODE_EXTREF_KEY;
 key.offset = btrfs_extref_hash(ref_objectid, name, name_len);

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 path->leave_spinning = 1;

 ret = btrfs_search_slot(trans, root, &key, path, -1, 1);
 if (ret > 0)
  ret = -ENOENT;
 if (ret < 0)
  goto out;






 extref = btrfs_find_name_in_ext_backref(path->nodes[0], path->slots[0],
      ref_objectid, name, name_len);
 if (!extref) {
  btrfs_handle_fs_error(root->fs_info, -ENOENT, ((void*)0));
  ret = -EROFS;
  goto out;
 }

 leaf = path->nodes[0];
 item_size = btrfs_item_size_nr(leaf, path->slots[0]);
 if (index)
  *index = btrfs_inode_extref_index(leaf, extref);

 if (del_len == item_size) {




  ret = btrfs_del_item(trans, root, path);
  goto out;
 }

 ptr = (unsigned long)extref;
 item_start = btrfs_item_ptr_offset(leaf, path->slots[0]);

 memmove_extent_buffer(leaf, ptr, ptr + del_len,
         item_size - (ptr + del_len - item_start));

 btrfs_truncate_item(path, item_size - del_len, 1);

out:
 btrfs_free_path(path);

 return ret;
}
