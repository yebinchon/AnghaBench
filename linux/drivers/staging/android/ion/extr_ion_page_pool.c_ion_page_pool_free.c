
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ion_page_pool {scalar_t__ order; } ;


 int BUG_ON (int) ;
 scalar_t__ compound_order (struct page*) ;
 int ion_page_pool_add (struct ion_page_pool*,struct page*) ;

void ion_page_pool_free(struct ion_page_pool *pool, struct page *page)
{
 BUG_ON(pool->order != compound_order(page));

 ion_page_pool_add(pool, page);
}
