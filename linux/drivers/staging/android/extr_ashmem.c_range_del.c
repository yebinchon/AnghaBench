
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ashmem_range {int unpinned; } ;


 int ashmem_range_cachep ;
 int kmem_cache_free (int ,struct ashmem_range*) ;
 int list_del (int *) ;
 int lru_del (struct ashmem_range*) ;
 scalar_t__ range_on_lru (struct ashmem_range*) ;

__attribute__((used)) static void range_del(struct ashmem_range *range)
{
 list_del(&range->unpinned);
 if (range_on_lru(range))
  lru_del(range);
 kmem_cache_free(ashmem_range_cachep, range);
}
