
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int dummy; } ;
struct nd_region {struct nd_mapping* mapping; } ;
struct nd_mapping {struct nvdimm* nvdimm; } ;
struct nd_blk_region {struct nd_region nd_region; } ;



struct nvdimm *nd_blk_region_to_dimm(struct nd_blk_region *ndbr)
{
 struct nd_region *nd_region = &ndbr->nd_region;
 struct nd_mapping *nd_mapping = &nd_region->mapping[0];

 return nd_mapping->nvdimm;
}
