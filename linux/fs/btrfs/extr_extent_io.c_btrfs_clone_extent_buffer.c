
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct extent_buffer {int bflags; struct page** pages; int len; int start; int fs_info; } ;


 int EXTENT_BUFFER_UNMAPPED ;
 int EXTENT_BUFFER_UPTODATE ;
 int GFP_NOFS ;
 int PageDirty (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int WARN_ON (int ) ;
 struct extent_buffer* __alloc_extent_buffer (int ,int ,int ) ;
 struct page* alloc_page (int ) ;
 int attach_extent_buffer_page (struct extent_buffer*,struct page*) ;
 int btrfs_release_extent_buffer (struct extent_buffer*) ;
 int copy_page (int ,int ) ;
 int num_extent_pages (struct extent_buffer*) ;
 int page_address (struct page*) ;
 int set_bit (int ,int *) ;

struct extent_buffer *btrfs_clone_extent_buffer(struct extent_buffer *src)
{
 int i;
 struct page *p;
 struct extent_buffer *new;
 int num_pages = num_extent_pages(src);

 new = __alloc_extent_buffer(src->fs_info, src->start, src->len);
 if (new == ((void*)0))
  return ((void*)0);

 for (i = 0; i < num_pages; i++) {
  p = alloc_page(GFP_NOFS);
  if (!p) {
   btrfs_release_extent_buffer(new);
   return ((void*)0);
  }
  attach_extent_buffer_page(new, p);
  WARN_ON(PageDirty(p));
  SetPageUptodate(p);
  new->pages[i] = p;
  copy_page(page_address(p), page_address(src->pages[i]));
 }

 set_bit(EXTENT_BUFFER_UPTODATE, &new->bflags);
 set_bit(EXTENT_BUFFER_UNMAPPED, &new->bflags);

 return new;
}
