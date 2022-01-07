
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ashmem_range {size_t pgstart; size_t pgend; unsigned int purged; int unpinned; struct ashmem_area* asma; } ;
struct ashmem_area {int dummy; } ;


 int list_add_tail (int *,int *) ;
 int lru_add (struct ashmem_range*) ;
 scalar_t__ range_on_lru (struct ashmem_range*) ;

__attribute__((used)) static void range_alloc(struct ashmem_area *asma,
   struct ashmem_range *prev_range, unsigned int purged,
   size_t start, size_t end,
   struct ashmem_range **new_range)
{
 struct ashmem_range *range = *new_range;

 *new_range = ((void*)0);
 range->asma = asma;
 range->pgstart = start;
 range->pgend = end;
 range->purged = purged;

 list_add_tail(&range->unpinned, &prev_range->unpinned);

 if (range_on_lru(range))
  lru_add(range);
}
