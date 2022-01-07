
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ashmem_range {size_t pgend; } ;



__attribute__((used)) static inline bool range_before_page(struct ashmem_range *range,
         size_t page)
{
 return range->pgend < page;
}
