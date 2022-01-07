
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct extent_buffer {int refs; struct page** pages; } ;
struct TYPE_2__ {int i_pages; } ;


 int ClearPageError (struct page*) ;
 int PAGECACHE_TAG_DIRTY ;
 int PageDirty (struct page*) ;
 int PagePrivate (struct page*) ;
 int WARN_ON (int) ;
 int __xa_clear_mark (int *,int ,int ) ;
 scalar_t__ atomic_read (int *) ;
 int clear_page_dirty_for_io (struct page*) ;
 int lock_page (struct page*) ;
 int num_extent_pages (struct extent_buffer*) ;
 int page_index (struct page*) ;
 int unlock_page (struct page*) ;
 int xa_lock_irq (int *) ;
 int xa_unlock_irq (int *) ;

void clear_extent_buffer_dirty(struct extent_buffer *eb)
{
 int i;
 int num_pages;
 struct page *page;

 num_pages = num_extent_pages(eb);

 for (i = 0; i < num_pages; i++) {
  page = eb->pages[i];
  if (!PageDirty(page))
   continue;

  lock_page(page);
  WARN_ON(!PagePrivate(page));

  clear_page_dirty_for_io(page);
  xa_lock_irq(&page->mapping->i_pages);
  if (!PageDirty(page))
   __xa_clear_mark(&page->mapping->i_pages,
     page_index(page), PAGECACHE_TAG_DIRTY);
  xa_unlock_irq(&page->mapping->i_pages);
  ClearPageError(page);
  unlock_page(page);
 }
 WARN_ON(atomic_read(&eb->refs) == 0);
}
