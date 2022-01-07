
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_inode_ref {int dummy; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int btrfs_inode_ref_index (struct extent_buffer*,struct btrfs_inode_ref*) ;
 int btrfs_inode_ref_name_len (struct extent_buffer*,struct btrfs_inode_ref*) ;
 char* kmalloc (int ,int ) ;
 int read_extent_buffer (struct extent_buffer*,char*,unsigned long,int ) ;

__attribute__((used)) static int ref_get_fields(struct extent_buffer *eb, unsigned long ref_ptr,
     u32 *namelen, char **name, u64 *index)
{
 struct btrfs_inode_ref *ref;

 ref = (struct btrfs_inode_ref *)ref_ptr;

 *namelen = btrfs_inode_ref_name_len(eb, ref);
 *name = kmalloc(*namelen, GFP_NOFS);
 if (*name == ((void*)0))
  return -ENOMEM;

 read_extent_buffer(eb, *name, (unsigned long)(ref + 1), *namelen);

 if (index)
  *index = btrfs_inode_ref_index(eb, ref);

 return 0;
}
