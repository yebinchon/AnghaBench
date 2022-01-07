
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; int range_cyclic; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct cifs_writedata {struct page** pages; } ;
struct address_space {int host; } ;
typedef scalar_t__ pgoff_t ;


 scalar_t__ PageWriteback (struct page*) ;
 scalar_t__ WB_SYNC_NONE ;
 int clear_page_dirty_for_io (struct page*) ;
 int end_page_writeback (struct page*) ;
 scalar_t__ i_size_read (int ) ;
 int lock_page (struct page*) ;
 scalar_t__ page_offset (struct page*) ;
 int put_page (struct page*) ;
 int set_page_writeback (struct page*) ;
 int trylock_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static unsigned int
wdata_prepare_pages(struct cifs_writedata *wdata, unsigned int found_pages,
      struct address_space *mapping,
      struct writeback_control *wbc,
      pgoff_t end, pgoff_t *index, pgoff_t *next, bool *done)
{
 unsigned int nr_pages = 0, i;
 struct page *page;

 for (i = 0; i < found_pages; i++) {
  page = wdata->pages[i];







  if (nr_pages == 0)
   lock_page(page);
  else if (!trylock_page(page))
   break;

  if (unlikely(page->mapping != mapping)) {
   unlock_page(page);
   break;
  }

  if (!wbc->range_cyclic && page->index > end) {
   *done = 1;
   unlock_page(page);
   break;
  }

  if (*next && (page->index != *next)) {

   unlock_page(page);
   break;
  }

  if (wbc->sync_mode != WB_SYNC_NONE)
   wait_on_page_writeback(page);

  if (PageWriteback(page) ||
    !clear_page_dirty_for_io(page)) {
   unlock_page(page);
   break;
  }





  set_page_writeback(page);
  if (page_offset(page) >= i_size_read(mapping->host)) {
   *done = 1;
   unlock_page(page);
   end_page_writeback(page);
   break;
  }

  wdata->pages[i] = page;
  *next = page->index + 1;
  ++nr_pages;
 }


 if (nr_pages == 0)
  *index = wdata->pages[0]->index + 1;


 for (i = nr_pages; i < found_pages; i++) {
  put_page(wdata->pages[i]);
  wdata->pages[i] = ((void*)0);
 }

 return nr_pages;
}
