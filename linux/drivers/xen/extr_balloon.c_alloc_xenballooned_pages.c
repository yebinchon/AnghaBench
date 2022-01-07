
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int target_unpopulated; } ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ PAGE_SIZE ;
 int XENFEAT_auto_translated_physmap ;
 scalar_t__ XEN_PAGE_SIZE ;
 int add_ballooned_pages (int) ;
 int balloon_mutex ;
 struct page* balloon_retrieve (int) ;
 TYPE_1__ balloon_stats ;
 int free_xenballooned_pages (int,struct page**) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_to_pfn (struct page*) ;
 int xen_alloc_p2m_entry (int ) ;
 int xen_feature (int ) ;

int alloc_xenballooned_pages(int nr_pages, struct page **pages)
{
 int pgno = 0;
 struct page *page;
 int ret;

 mutex_lock(&balloon_mutex);

 balloon_stats.target_unpopulated += nr_pages;

 while (pgno < nr_pages) {
  page = balloon_retrieve(1);
  if (page) {
   pages[pgno++] = page;
  } else {
   ret = add_ballooned_pages(nr_pages - pgno);
   if (ret < 0)
    goto out_undo;
  }
 }
 mutex_unlock(&balloon_mutex);
 return 0;
 out_undo:
 mutex_unlock(&balloon_mutex);
 free_xenballooned_pages(pgno, pages);
 return ret;
}
