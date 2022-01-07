
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ashmem_range {unsigned long pgend; unsigned long pgstart; } ;



__attribute__((used)) static inline unsigned long range_size(struct ashmem_range *range)
{
 return range->pgend - range->pgstart + 1;
}
