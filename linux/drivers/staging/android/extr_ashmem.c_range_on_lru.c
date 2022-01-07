
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ashmem_range {scalar_t__ purged; } ;


 scalar_t__ ASHMEM_NOT_PURGED ;

__attribute__((used)) static inline bool range_on_lru(struct ashmem_range *range)
{
 return range->purged == ASHMEM_NOT_PURGED;
}
