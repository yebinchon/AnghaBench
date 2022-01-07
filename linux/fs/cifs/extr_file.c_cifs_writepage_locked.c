
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ sync_mode; } ;
struct page {int mapping; } ;


 int EAGAIN ;
 int FYI ;
 int PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 scalar_t__ WB_SYNC_ALL ;
 int cifs_dbg (int ,char*) ;
 int cifs_partialpagewrite (struct page*,int ,int ) ;
 int end_page_writeback (struct page*) ;
 int free_xid (unsigned int) ;
 int get_page (struct page*) ;
 unsigned int get_xid () ;
 scalar_t__ is_retryable_error (int) ;
 int mapping_set_error (int ,int) ;
 int put_page (struct page*) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int set_page_writeback (struct page*) ;

__attribute__((used)) static int
cifs_writepage_locked(struct page *page, struct writeback_control *wbc)
{
 int rc;
 unsigned int xid;

 xid = get_xid();

 get_page(page);
 if (!PageUptodate(page))
  cifs_dbg(FYI, "ppw - page not up to date\n");
 set_page_writeback(page);
retry_write:
 rc = cifs_partialpagewrite(page, 0, PAGE_SIZE);
 if (is_retryable_error(rc)) {
  if (wbc->sync_mode == WB_SYNC_ALL && rc == -EAGAIN)
   goto retry_write;
  redirty_page_for_writepage(wbc, page);
 } else if (rc != 0) {
  SetPageError(page);
  mapping_set_error(page->mapping, rc);
 } else {
  SetPageUptodate(page);
 }
 end_page_writeback(page);
 put_page(page);
 free_xid(xid);
 return rc;
}
