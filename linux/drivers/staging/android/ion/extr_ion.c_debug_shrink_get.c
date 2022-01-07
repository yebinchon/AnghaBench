
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct shrink_control {scalar_t__ nr_to_scan; int gfp_mask; } ;
struct TYPE_2__ {int (* count_objects ) (TYPE_1__*,struct shrink_control*) ;} ;
struct ion_heap {TYPE_1__ shrinker; } ;


 int GFP_HIGHUSER ;
 int stub1 (TYPE_1__*,struct shrink_control*) ;

__attribute__((used)) static int debug_shrink_get(void *data, u64 *val)
{
 struct ion_heap *heap = data;
 struct shrink_control sc;
 int objs;

 sc.gfp_mask = GFP_HIGHUSER;
 sc.nr_to_scan = 0;

 objs = heap->shrinker.count_objects(&heap->shrinker, &sc);
 *val = objs;
 return 0;
}
