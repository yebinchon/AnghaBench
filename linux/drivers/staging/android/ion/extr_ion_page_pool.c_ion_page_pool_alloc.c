
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ion_page_pool {int mutex; scalar_t__ low_count; scalar_t__ high_count; } ;


 int BUG_ON (int) ;
 struct page* ion_page_pool_alloc_pages (struct ion_page_pool*) ;
 struct page* ion_page_pool_remove (struct ion_page_pool*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct page *ion_page_pool_alloc(struct ion_page_pool *pool)
{
 struct page *page = ((void*)0);

 BUG_ON(!pool);

 mutex_lock(&pool->mutex);
 if (pool->high_count)
  page = ion_page_pool_remove(pool, 1);
 else if (pool->low_count)
  page = ion_page_pool_remove(pool, 0);
 mutex_unlock(&pool->mutex);

 if (!page)
  page = ion_page_pool_alloc_pages(pool);

 return page;
}
