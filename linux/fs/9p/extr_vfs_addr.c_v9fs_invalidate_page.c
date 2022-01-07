
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned int PAGE_SIZE ;
 int v9fs_fscache_invalidate_page (struct page*) ;

__attribute__((used)) static void v9fs_invalidate_page(struct page *page, unsigned int offset,
     unsigned int length)
{




 if (offset == 0 && length == PAGE_SIZE)
  v9fs_fscache_invalidate_page(page);
}
