
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ nr_to_write; scalar_t__ sync_mode; } ;
struct page {struct address_space* mapping; int index; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ pgoff_t ;


 int BUG () ;
 int PAGECACHE_TAG_DIRTY ;
 int PageDirty (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 scalar_t__ WB_SYNC_NONE ;
 int _debug (char*,int ) ;
 int _enter (char*,scalar_t__,scalar_t__) ;
 int _leave (char*,scalar_t__) ;
 int afs_write_back_from_locked_page (struct address_space*,struct writeback_control*,struct page*,scalar_t__) ;
 int clear_page_dirty_for_io (struct page*) ;
 int cond_resched () ;
 int find_get_pages_range_tag (struct address_space*,scalar_t__*,scalar_t__,int ,int,struct page**) ;
 int lock_page_killable (struct page*) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int afs_writepages_region(struct address_space *mapping,
     struct writeback_control *wbc,
     pgoff_t index, pgoff_t end, pgoff_t *_next)
{
 struct page *page;
 int ret, n;

 _enter(",,%lx,%lx,", index, end);

 do {
  n = find_get_pages_range_tag(mapping, &index, end,
     PAGECACHE_TAG_DIRTY, 1, &page);
  if (!n)
   break;

  _debug("wback %lx", page->index);







  ret = lock_page_killable(page);
  if (ret < 0) {
   put_page(page);
   _leave(" = %d", ret);
   return ret;
  }

  if (page->mapping != mapping || !PageDirty(page)) {
   unlock_page(page);
   put_page(page);
   continue;
  }

  if (PageWriteback(page)) {
   unlock_page(page);
   if (wbc->sync_mode != WB_SYNC_NONE)
    wait_on_page_writeback(page);
   put_page(page);
   continue;
  }

  if (!clear_page_dirty_for_io(page))
   BUG();
  ret = afs_write_back_from_locked_page(mapping, wbc, page, end);
  put_page(page);
  if (ret < 0) {
   _leave(" = %d", ret);
   return ret;
  }

  wbc->nr_to_write -= ret;

  cond_resched();
 } while (index < end && wbc->nr_to_write > 0);

 *_next = index;
 _leave(" = 0 [%lx]", *_next);
 return 0;
}
