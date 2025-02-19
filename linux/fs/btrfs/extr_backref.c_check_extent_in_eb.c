
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_inode_elem {scalar_t__ offset; int inum; struct extent_inode_elem* next; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_key {scalar_t__ offset; int objectid; } ;
struct btrfs_file_extent_item {int dummy; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int btrfs_file_extent_compression (struct extent_buffer const*,struct btrfs_file_extent_item const*) ;
 int btrfs_file_extent_encryption (struct extent_buffer const*,struct btrfs_file_extent_item const*) ;
 scalar_t__ btrfs_file_extent_num_bytes (struct extent_buffer const*,struct btrfs_file_extent_item const*) ;
 scalar_t__ btrfs_file_extent_offset (struct extent_buffer const*,struct btrfs_file_extent_item const*) ;
 int btrfs_file_extent_other_encoding (struct extent_buffer const*,struct btrfs_file_extent_item const*) ;
 struct extent_inode_elem* kmalloc (int,int ) ;

__attribute__((used)) static int check_extent_in_eb(const struct btrfs_key *key,
         const struct extent_buffer *eb,
         const struct btrfs_file_extent_item *fi,
         u64 extent_item_pos,
         struct extent_inode_elem **eie,
         bool ignore_offset)
{
 u64 offset = 0;
 struct extent_inode_elem *e;

 if (!ignore_offset &&
     !btrfs_file_extent_compression(eb, fi) &&
     !btrfs_file_extent_encryption(eb, fi) &&
     !btrfs_file_extent_other_encoding(eb, fi)) {
  u64 data_offset;
  u64 data_len;

  data_offset = btrfs_file_extent_offset(eb, fi);
  data_len = btrfs_file_extent_num_bytes(eb, fi);

  if (extent_item_pos < data_offset ||
      extent_item_pos >= data_offset + data_len)
   return 1;
  offset = extent_item_pos - data_offset;
 }

 e = kmalloc(sizeof(*e), GFP_NOFS);
 if (!e)
  return -ENOMEM;

 e->next = *eie;
 e->inum = key->objectid;
 e->offset = key->offset + offset;
 *eie = e;

 return 0;
}
