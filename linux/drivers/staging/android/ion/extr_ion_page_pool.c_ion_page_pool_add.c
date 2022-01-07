
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct ion_page_pool {int order; int mutex; int low_count; int low_items; int high_count; int high_items; } ;


 int NR_KERNEL_MISC_RECLAIMABLE ;
 scalar_t__ PageHighMem (struct page*) ;
 int list_add_tail (int *,int *) ;
 int mod_node_page_state (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_pgdat (struct page*) ;

__attribute__((used)) static void ion_page_pool_add(struct ion_page_pool *pool, struct page *page)
{
 mutex_lock(&pool->mutex);
 if (PageHighMem(page)) {
  list_add_tail(&page->lru, &pool->high_items);
  pool->high_count++;
 } else {
  list_add_tail(&page->lru, &pool->low_items);
  pool->low_count++;
 }

 mod_node_page_state(page_pgdat(page), NR_KERNEL_MISC_RECLAIMABLE,
       1 << pool->order);
 mutex_unlock(&pool->mutex);
}
