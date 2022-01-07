
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ion_system_heap {struct ion_page_pool** pools; } ;
struct ion_page_pool {int dummy; } ;
struct ion_buffer {int dummy; } ;


 struct page* ion_page_pool_alloc (struct ion_page_pool*) ;
 size_t order_to_index (unsigned long) ;

__attribute__((used)) static struct page *alloc_buffer_page(struct ion_system_heap *heap,
          struct ion_buffer *buffer,
          unsigned long order)
{
 struct ion_page_pool *pool = heap->pools[order_to_index(order)];

 return ion_page_pool_alloc(pool);
}
