
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct list_head {int dummy; } ;


 int list_add (int *,struct list_head*) ;
 int page_ref_count (struct page*) ;
 int put_page (struct page*) ;
 int z_erofs_page_is_staging (struct page*) ;

__attribute__((used)) static inline bool z_erofs_put_stagingpage(struct list_head *pagepool,
        struct page *page)
{
 if (!z_erofs_page_is_staging(page))
  return 0;


 if (page_ref_count(page) > 1)
  put_page(page);
 else
  list_add(&page->lru, pagepool);
 return 1;
}
