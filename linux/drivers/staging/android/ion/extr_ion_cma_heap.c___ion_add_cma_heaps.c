
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_heap {int name; } ;
struct cma {int dummy; } ;


 scalar_t__ IS_ERR (struct ion_heap*) ;
 int PTR_ERR (struct ion_heap*) ;
 struct ion_heap* __ion_cma_heap_create (struct cma*) ;
 int cma_get_name (struct cma*) ;
 int ion_device_add_heap (struct ion_heap*) ;

__attribute__((used)) static int __ion_add_cma_heaps(struct cma *cma, void *data)
{
 struct ion_heap *heap;

 heap = __ion_cma_heap_create(cma);
 if (IS_ERR(heap))
  return PTR_ERR(heap);

 heap->name = cma_get_name(cma);

 ion_device_add_heap(heap);
 return 0;
}
