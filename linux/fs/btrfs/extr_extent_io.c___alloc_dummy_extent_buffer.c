
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int * pages; int bflags; } ;
struct btrfs_fs_info {int dummy; } ;


 int EXTENT_BUFFER_UNMAPPED ;
 int GFP_NOFS ;
 struct extent_buffer* __alloc_extent_buffer (struct btrfs_fs_info*,int ,unsigned long) ;
 int __free_extent_buffer (struct extent_buffer*) ;
 int __free_page (int ) ;
 int alloc_page (int ) ;
 int btrfs_set_header_nritems (struct extent_buffer*,int ) ;
 int num_extent_pages (struct extent_buffer*) ;
 int set_bit (int ,int *) ;
 int set_extent_buffer_uptodate (struct extent_buffer*) ;

struct extent_buffer *__alloc_dummy_extent_buffer(struct btrfs_fs_info *fs_info,
        u64 start, unsigned long len)
{
 struct extent_buffer *eb;
 int num_pages;
 int i;

 eb = __alloc_extent_buffer(fs_info, start, len);
 if (!eb)
  return ((void*)0);

 num_pages = num_extent_pages(eb);
 for (i = 0; i < num_pages; i++) {
  eb->pages[i] = alloc_page(GFP_NOFS);
  if (!eb->pages[i])
   goto err;
 }
 set_extent_buffer_uptodate(eb);
 btrfs_set_header_nritems(eb, 0);
 set_bit(EXTENT_BUFFER_UNMAPPED, &eb->bflags);

 return eb;
err:
 for (; i > 0; i--)
  __free_page(eb->pages[i - 1]);
 __free_extent_buffer(eb);
 return ((void*)0);
}
