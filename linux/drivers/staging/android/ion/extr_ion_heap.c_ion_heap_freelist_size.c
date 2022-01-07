
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_heap {size_t free_list_size; int free_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

size_t ion_heap_freelist_size(struct ion_heap *heap)
{
 size_t size;

 spin_lock(&heap->free_lock);
 size = heap->free_list_size;
 spin_unlock(&heap->free_lock);

 return size;
}
