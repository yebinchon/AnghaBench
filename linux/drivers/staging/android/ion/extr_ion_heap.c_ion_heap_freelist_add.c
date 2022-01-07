
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_heap {int waitqueue; int free_lock; int free_list_size; int free_list; } ;
struct ion_buffer {scalar_t__ size; int list; } ;


 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

void ion_heap_freelist_add(struct ion_heap *heap, struct ion_buffer *buffer)
{
 spin_lock(&heap->free_lock);
 list_add(&buffer->list, &heap->free_list);
 heap->free_list_size += buffer->size;
 spin_unlock(&heap->free_lock);
 wake_up(&heap->waitqueue);
}
