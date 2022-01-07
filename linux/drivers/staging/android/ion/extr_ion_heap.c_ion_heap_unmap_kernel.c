
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_heap {int dummy; } ;
struct ion_buffer {int vaddr; } ;


 int vunmap (int ) ;

void ion_heap_unmap_kernel(struct ion_heap *heap,
      struct ion_buffer *buffer)
{
 vunmap(buffer->vaddr);
}
