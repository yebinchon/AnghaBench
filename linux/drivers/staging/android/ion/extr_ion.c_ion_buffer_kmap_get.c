
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ion_buffer {void* vaddr; scalar_t__ kmap_cnt; TYPE_2__* heap; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {void* (* map_kernel ) (TYPE_2__*,struct ion_buffer*) ;} ;


 int EINVAL ;
 void* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (void*) ;
 scalar_t__ WARN_ONCE (int,char*) ;
 void* stub1 (TYPE_2__*,struct ion_buffer*) ;

__attribute__((used)) static void *ion_buffer_kmap_get(struct ion_buffer *buffer)
{
 void *vaddr;

 if (buffer->kmap_cnt) {
  buffer->kmap_cnt++;
  return buffer->vaddr;
 }
 vaddr = buffer->heap->ops->map_kernel(buffer->heap, buffer);
 if (WARN_ONCE(!vaddr,
        "heap->ops->map_kernel should return ERR_PTR on error"))
  return ERR_PTR(-EINVAL);
 if (IS_ERR(vaddr))
  return vaddr;
 buffer->vaddr = vaddr;
 buffer->kmap_cnt++;
 return vaddr;
}
