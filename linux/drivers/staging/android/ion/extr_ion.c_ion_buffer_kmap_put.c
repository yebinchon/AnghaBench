
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ion_buffer {int * vaddr; TYPE_2__* heap; int kmap_cnt; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* unmap_kernel ) (TYPE_2__*,struct ion_buffer*) ;} ;


 int stub1 (TYPE_2__*,struct ion_buffer*) ;

__attribute__((used)) static void ion_buffer_kmap_put(struct ion_buffer *buffer)
{
 buffer->kmap_cnt--;
 if (!buffer->kmap_cnt) {
  buffer->heap->ops->unmap_kernel(buffer->heap, buffer);
  buffer->vaddr = ((void*)0);
 }
}
