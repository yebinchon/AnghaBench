
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ashmem_range {size_t pgstart; size_t pgend; } ;


 int lru_count ;
 scalar_t__ range_on_lru (struct ashmem_range*) ;
 size_t range_size (struct ashmem_range*) ;

__attribute__((used)) static inline void range_shrink(struct ashmem_range *range,
    size_t start, size_t end)
{
 size_t pre = range_size(range);

 range->pgstart = start;
 range->pgend = end;

 if (range_on_lru(range))
  lru_count -= pre - range_size(range);
}
