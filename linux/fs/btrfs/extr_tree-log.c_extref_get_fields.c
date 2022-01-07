
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_inode_extref {int name; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int btrfs_inode_extref_index (struct extent_buffer*,struct btrfs_inode_extref*) ;
 int btrfs_inode_extref_name_len (struct extent_buffer*,struct btrfs_inode_extref*) ;
 int btrfs_inode_extref_parent (struct extent_buffer*,struct btrfs_inode_extref*) ;
 char* kmalloc (int ,int ) ;
 int read_extent_buffer (struct extent_buffer*,char*,unsigned long,int ) ;

__attribute__((used)) static int extref_get_fields(struct extent_buffer *eb, unsigned long ref_ptr,
        u32 *namelen, char **name, u64 *index,
        u64 *parent_objectid)
{
 struct btrfs_inode_extref *extref;

 extref = (struct btrfs_inode_extref *)ref_ptr;

 *namelen = btrfs_inode_extref_name_len(eb, extref);
 *name = kmalloc(*namelen, GFP_NOFS);
 if (*name == ((void*)0))
  return -ENOMEM;

 read_extent_buffer(eb, *name, (unsigned long)&extref->name,
      *namelen);

 if (index)
  *index = btrfs_inode_extref_index(eb, extref);
 if (parent_objectid)
  *parent_objectid = btrfs_inode_extref_parent(eb, extref);

 return 0;
}
