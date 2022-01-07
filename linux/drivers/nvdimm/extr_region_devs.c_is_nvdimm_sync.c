
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int flags; int dev; } ;


 int ND_REGION_ASYNC ;
 scalar_t__ is_nd_pmem (int *) ;
 scalar_t__ is_nd_volatile (int *) ;
 int test_bit (int ,int *) ;

bool is_nvdimm_sync(struct nd_region *nd_region)
{
 if (is_nd_volatile(&nd_region->dev))
  return 1;

 return is_nd_pmem(&nd_region->dev) &&
  !test_bit(ND_REGION_ASYNC, &nd_region->flags);
}
