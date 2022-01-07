
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ion_page_pool {int order; } ;


 int __free_pages (struct page*,int ) ;

__attribute__((used)) static void ion_page_pool_free_pages(struct ion_page_pool *pool,
         struct page *page)
{
 __free_pages(page, pool->order);
}
