
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct nvdimm {int flags; } ;
struct nd_region {size_t ndr_mappings; int dev; struct nd_mapping* mapping; } ;
struct nd_mapping {struct nvdimm* nvdimm; } ;


 int NDD_ALIASING ;
 int ND_DEVICE_NAMESPACE_BLK ;
 int ND_DEVICE_NAMESPACE_IO ;
 int ND_DEVICE_NAMESPACE_PMEM ;
 scalar_t__ is_memory (int *) ;
 scalar_t__ is_nd_blk (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int nd_region_to_nstype(struct nd_region *nd_region)
{
 if (is_memory(&nd_region->dev)) {
  u16 i, alias;

  for (i = 0, alias = 0; i < nd_region->ndr_mappings; i++) {
   struct nd_mapping *nd_mapping = &nd_region->mapping[i];
   struct nvdimm *nvdimm = nd_mapping->nvdimm;

   if (test_bit(NDD_ALIASING, &nvdimm->flags))
    alias++;
  }
  if (alias)
   return ND_DEVICE_NAMESPACE_PMEM;
  else
   return ND_DEVICE_NAMESPACE_IO;
 } else if (is_nd_blk(&nd_region->dev)) {
  return ND_DEVICE_NAMESPACE_BLK;
 }

 return 0;
}
