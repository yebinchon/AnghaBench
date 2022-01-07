
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ion_heap {int flags; int type; int * ops; } ;
struct ion_system_heap {struct ion_heap heap; int pools; } ;


 int ENOMEM ;
 struct ion_heap* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int ION_HEAP_FLAG_DEFER_FREE ;
 int ION_HEAP_TYPE_SYSTEM ;
 scalar_t__ ion_system_heap_create_pools (int ) ;
 int kfree (struct ion_system_heap*) ;
 struct ion_system_heap* kzalloc (int,int ) ;
 int system_heap_ops ;

__attribute__((used)) static struct ion_heap *__ion_system_heap_create(void)
{
 struct ion_system_heap *heap;

 heap = kzalloc(sizeof(*heap), GFP_KERNEL);
 if (!heap)
  return ERR_PTR(-ENOMEM);
 heap->heap.ops = &system_heap_ops;
 heap->heap.type = ION_HEAP_TYPE_SYSTEM;
 heap->heap.flags = ION_HEAP_FLAG_DEFER_FREE;

 if (ion_system_heap_create_pools(heap->pools))
  goto free_heap;

 return &heap->heap;

free_heap:
 kfree(heap);
 return ERR_PTR(-ENOMEM);
}
