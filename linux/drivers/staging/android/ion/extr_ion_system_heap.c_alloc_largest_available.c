
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ion_system_heap {int dummy; } ;
struct ion_buffer {int dummy; } ;


 int NUM_ORDERS ;
 struct page* alloc_buffer_page (struct ion_system_heap*,struct ion_buffer*,unsigned int) ;
 unsigned long order_to_size (unsigned int) ;
 unsigned int* orders ;

__attribute__((used)) static struct page *alloc_largest_available(struct ion_system_heap *heap,
         struct ion_buffer *buffer,
         unsigned long size,
         unsigned int max_order)
{
 struct page *page;
 int i;

 for (i = 0; i < NUM_ORDERS; i++) {
  if (size < order_to_size(orders[i]))
   continue;
  if (max_order < orders[i])
   continue;

  page = alloc_buffer_page(heap, buffer, orders[i]);
  if (!page)
   continue;

  return page;
 }

 return ((void*)0);
}
