
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ashmem_range {int lru; } ;


 int list_del (int *) ;
 int lru_count ;
 scalar_t__ range_size (struct ashmem_range*) ;

__attribute__((used)) static inline void lru_del(struct ashmem_range *range)
{
 list_del(&range->lru);
 lru_count -= range_size(range);
}
