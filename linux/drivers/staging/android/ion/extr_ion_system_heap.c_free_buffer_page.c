
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ion_system_heap {struct ion_page_pool** pools; } ;
struct ion_page_pool {int dummy; } ;
struct ion_buffer {int private_flags; } ;


 int ION_PRIV_FLAG_SHRINKER_FREE ;
 int __free_pages (struct page*,unsigned int) ;
 unsigned int compound_order (struct page*) ;
 int ion_page_pool_free (struct ion_page_pool*,struct page*) ;
 size_t order_to_index (unsigned int) ;

__attribute__((used)) static void free_buffer_page(struct ion_system_heap *heap,
        struct ion_buffer *buffer, struct page *page)
{
 struct ion_page_pool *pool;
 unsigned int order = compound_order(page);


 if (buffer->private_flags & ION_PRIV_FLAG_SHRINKER_FREE) {
  __free_pages(page, order);
  return;
 }

 pool = heap->pools[order_to_index(order)];

 ion_page_pool_free(pool, page);
}
