
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_inode_extref {int name; } ;


 int btrfs_inode_extref_name_len (struct extent_buffer*,struct btrfs_inode_extref*) ;
 scalar_t__ btrfs_inode_extref_parent (struct extent_buffer*,struct btrfs_inode_extref*) ;
 unsigned long btrfs_item_ptr_offset (struct extent_buffer*,int) ;
 scalar_t__ btrfs_item_size_nr (struct extent_buffer*,int) ;
 scalar_t__ memcmp_extent_buffer (struct extent_buffer*,char const*,unsigned long,int) ;

struct btrfs_inode_extref *btrfs_find_name_in_ext_backref(
  struct extent_buffer *leaf, int slot, u64 ref_objectid,
  const char *name, int name_len)
{
 struct btrfs_inode_extref *extref;
 unsigned long ptr;
 unsigned long name_ptr;
 u32 item_size;
 u32 cur_offset = 0;
 int ref_name_len;

 item_size = btrfs_item_size_nr(leaf, slot);
 ptr = btrfs_item_ptr_offset(leaf, slot);







 while (cur_offset < item_size) {
  extref = (struct btrfs_inode_extref *) (ptr + cur_offset);
  name_ptr = (unsigned long)(&extref->name);
  ref_name_len = btrfs_inode_extref_name_len(leaf, extref);

  if (ref_name_len == name_len &&
      btrfs_inode_extref_parent(leaf, extref) == ref_objectid &&
      (memcmp_extent_buffer(leaf, name, name_ptr, name_len) == 0))
   return extref;

  cur_offset += ref_name_len + sizeof(*extref);
 }
 return ((void*)0);
}
