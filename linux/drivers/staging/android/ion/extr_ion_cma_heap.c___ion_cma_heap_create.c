
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_heap {int type; int * ops; } ;
struct ion_cma_heap {struct ion_heap heap; struct cma* cma; } ;
struct cma {int dummy; } ;


 int ENOMEM ;
 struct ion_heap* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int ION_HEAP_TYPE_DMA ;
 int ion_cma_ops ;
 struct ion_cma_heap* kzalloc (int,int ) ;

__attribute__((used)) static struct ion_heap *__ion_cma_heap_create(struct cma *cma)
{
 struct ion_cma_heap *cma_heap;

 cma_heap = kzalloc(sizeof(*cma_heap), GFP_KERNEL);

 if (!cma_heap)
  return ERR_PTR(-ENOMEM);

 cma_heap->heap.ops = &ion_cma_ops;
 cma_heap->cma = cma;
 cma_heap->heap.type = ION_HEAP_TYPE_DMA;
 return &cma_heap->heap;
}
