
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ batch; int seeks; int scan_objects; int count_objects; } ;
struct ion_heap {TYPE_1__ shrinker; } ;


 int DEFAULT_SEEKS ;
 int ion_heap_shrink_count ;
 int ion_heap_shrink_scan ;
 int register_shrinker (TYPE_1__*) ;

int ion_heap_init_shrinker(struct ion_heap *heap)
{
 heap->shrinker.count_objects = ion_heap_shrink_count;
 heap->shrinker.scan_objects = ion_heap_shrink_scan;
 heap->shrinker.seeks = DEFAULT_SEEKS;
 heap->shrinker.batch = 0;

 return register_shrinker(&heap->shrinker);
}
