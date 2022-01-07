
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int flags; int dev; } ;


 int ND_REGION_PERSIST_CACHE ;
 scalar_t__ is_nd_pmem (int *) ;
 int test_bit (int ,int *) ;

int nvdimm_has_cache(struct nd_region *nd_region)
{
 return is_nd_pmem(&nd_region->dev) &&
  !test_bit(ND_REGION_PERSIST_CACHE, &nd_region->flags);
}
