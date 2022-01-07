
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {scalar_t__ range_end; scalar_t__ range_start; int nr_to_write; int sync_mode; } ;
struct page {TYPE_1__* mapping; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int host; } ;


 int FYI ;
 int PAGE_SIZE ;
 int WB_SYNC_ALL ;
 int cifs_dbg (int ,char*,struct page*) ;
 int cifs_fscache_invalidate_page (struct page*,int ) ;
 int cifs_writepage_locked (struct page*,struct writeback_control*) ;
 scalar_t__ clear_page_dirty_for_io (struct page*) ;
 scalar_t__ page_offset (struct page*) ;

__attribute__((used)) static int cifs_launder_page(struct page *page)
{
 int rc = 0;
 loff_t range_start = page_offset(page);
 loff_t range_end = range_start + (loff_t)(PAGE_SIZE - 1);
 struct writeback_control wbc = {
  .sync_mode = WB_SYNC_ALL,
  .nr_to_write = 0,
  .range_start = range_start,
  .range_end = range_end,
 };

 cifs_dbg(FYI, "Launder page: %p\n", page);

 if (clear_page_dirty_for_io(page))
  rc = cifs_writepage_locked(page, &wbc);

 cifs_fscache_invalidate_page(page, page->mapping->host);
 return rc;
}
