
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct list_head {int dummy; } ;
typedef int gfp_t ;


 int DBG_BUGON (int) ;
 int __GFP_NOFAIL ;
 struct page* alloc_pages (int,int ) ;
 int list_del (int *) ;
 int list_empty (struct list_head*) ;
 struct page* lru_to_page (struct list_head*) ;
 int page_ref_count (struct page*) ;

struct page *erofs_allocpage(struct list_head *pool, gfp_t gfp, bool nofail)
{
 struct page *page;

 if (!list_empty(pool)) {
  page = lru_to_page(pool);
  DBG_BUGON(page_ref_count(page) != 1);
  list_del(&page->lru);
 } else {
  page = alloc_pages(gfp | (nofail ? __GFP_NOFAIL : 0), 0);
 }
 return page;
}
