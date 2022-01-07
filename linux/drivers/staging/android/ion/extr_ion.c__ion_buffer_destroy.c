
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_heap {int flags; } ;
struct ion_buffer {struct ion_heap* heap; } ;


 int ION_HEAP_FLAG_DEFER_FREE ;
 int ion_buffer_destroy (struct ion_buffer*) ;
 int ion_heap_freelist_add (struct ion_heap*,struct ion_buffer*) ;

__attribute__((used)) static void _ion_buffer_destroy(struct ion_buffer *buffer)
{
 struct ion_heap *heap = buffer->heap;

 if (heap->flags & ION_HEAP_FLAG_DEFER_FREE)
  ion_heap_freelist_add(heap, buffer);
 else
  ion_buffer_destroy(buffer);
}
