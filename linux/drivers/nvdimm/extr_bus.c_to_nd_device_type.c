
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;


 int ND_DEVICE_DAX_PMEM ;
 int ND_DEVICE_DIMM ;
 int ND_DEVICE_REGION_BLK ;
 int ND_DEVICE_REGION_PMEM ;
 scalar_t__ is_memory (struct device*) ;
 scalar_t__ is_nd_blk (struct device*) ;
 scalar_t__ is_nd_dax (struct device*) ;
 scalar_t__ is_nd_region (int ) ;
 scalar_t__ is_nvdimm (struct device*) ;
 int nd_region_to_nstype (int ) ;
 int to_nd_region (int ) ;

__attribute__((used)) static int to_nd_device_type(struct device *dev)
{
 if (is_nvdimm(dev))
  return ND_DEVICE_DIMM;
 else if (is_memory(dev))
  return ND_DEVICE_REGION_PMEM;
 else if (is_nd_blk(dev))
  return ND_DEVICE_REGION_BLK;
 else if (is_nd_dax(dev))
  return ND_DEVICE_DAX_PMEM;
 else if (is_nd_region(dev->parent))
  return nd_region_to_nstype(to_nd_region(dev->parent));

 return 0;
}
