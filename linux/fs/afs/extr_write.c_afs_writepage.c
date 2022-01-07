
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int range_end; int nr_to_write; } ;
struct page {int mapping; int index; } ;


 int PAGE_SHIFT ;
 int _enter (char*,int ) ;
 int _leave (char*,...) ;
 int afs_write_back_from_locked_page (int ,struct writeback_control*,struct page*,int) ;

int afs_writepage(struct page *page, struct writeback_control *wbc)
{
 int ret;

 _enter("{%lx},", page->index);

 ret = afs_write_back_from_locked_page(page->mapping, wbc, page,
           wbc->range_end >> PAGE_SHIFT);
 if (ret < 0) {
  _leave(" = %d", ret);
  return 0;
 }

 wbc->nr_to_write -= ret;

 _leave(" = 0");
 return 0;
}
