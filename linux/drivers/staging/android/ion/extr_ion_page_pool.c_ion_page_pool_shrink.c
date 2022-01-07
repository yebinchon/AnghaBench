
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ion_page_pool {int order; int mutex; scalar_t__ high_count; scalar_t__ low_count; } ;
typedef int gfp_t ;


 int __GFP_HIGHMEM ;
 scalar_t__ current_is_kswapd () ;
 int ion_page_pool_free_pages (struct ion_page_pool*,struct page*) ;
 struct page* ion_page_pool_remove (struct ion_page_pool*,int) ;
 int ion_page_pool_total (struct ion_page_pool*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ion_page_pool_shrink(struct ion_page_pool *pool, gfp_t gfp_mask,
    int nr_to_scan)
{
 int freed = 0;
 bool high;

 if (current_is_kswapd())
  high = 1;
 else
  high = !!(gfp_mask & __GFP_HIGHMEM);

 if (nr_to_scan == 0)
  return ion_page_pool_total(pool, high);

 while (freed < nr_to_scan) {
  struct page *page;

  mutex_lock(&pool->mutex);
  if (pool->low_count) {
   page = ion_page_pool_remove(pool, 0);
  } else if (high && pool->high_count) {
   page = ion_page_pool_remove(pool, 1);
  } else {
   mutex_unlock(&pool->mutex);
   break;
  }
  mutex_unlock(&pool->mutex);
  ion_page_pool_free_pages(pool, page);
  freed += (1 << pool->order);
 }

 return freed;
}
