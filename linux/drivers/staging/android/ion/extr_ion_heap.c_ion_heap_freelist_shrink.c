
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_heap {int dummy; } ;


 size_t _ion_heap_freelist_drain (struct ion_heap*,size_t,int) ;

size_t ion_heap_freelist_shrink(struct ion_heap *heap, size_t size)
{
 return _ion_heap_freelist_drain(heap, size, 1);
}
