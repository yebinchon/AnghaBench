
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ashmem_range {size_t pgstart; size_t pgend; } ;



__attribute__((used)) static inline bool page_range_subsumes_range(struct ashmem_range *range,
          size_t start, size_t end)
{
 return (range->pgstart >= start) && (range->pgend <= end);
}
