
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {unsigned long private; TYPE_1__* mapping; } ;
struct extent_buffer {int bflags; struct page** pages; } ;
struct TYPE_2__ {int private_lock; } ;


 int BUG_ON (int ) ;
 int ClearPagePrivate (struct page*) ;
 int EXTENT_BUFFER_DIRTY ;
 int EXTENT_BUFFER_UNMAPPED ;
 int PageDirty (struct page*) ;
 scalar_t__ PagePrivate (struct page*) ;
 int PageWriteback (struct page*) ;
 int extent_buffer_under_io (struct extent_buffer*) ;
 int num_extent_pages (struct extent_buffer*) ;
 int put_page (struct page*) ;
 int set_page_private (struct page*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void btrfs_release_extent_buffer_pages(struct extent_buffer *eb)
{
 int i;
 int num_pages;
 int mapped = !test_bit(EXTENT_BUFFER_UNMAPPED, &eb->bflags);

 BUG_ON(extent_buffer_under_io(eb));

 num_pages = num_extent_pages(eb);
 for (i = 0; i < num_pages; i++) {
  struct page *page = eb->pages[i];

  if (!page)
   continue;
  if (mapped)
   spin_lock(&page->mapping->private_lock);







  if (PagePrivate(page) &&
      page->private == (unsigned long)eb) {
   BUG_ON(test_bit(EXTENT_BUFFER_DIRTY, &eb->bflags));
   BUG_ON(PageDirty(page));
   BUG_ON(PageWriteback(page));




   ClearPagePrivate(page);
   set_page_private(page, 0);

   put_page(page);
  }

  if (mapped)
   spin_unlock(&page->mapping->private_lock);


  put_page(page);
 }
}
