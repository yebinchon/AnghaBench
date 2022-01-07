
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus {int dev; } ;
struct nd_region {int dev; } ;
struct conflict_context {int size; int start; struct nd_region* nd_region; } ;
typedef int resource_size_t ;


 int device_for_each_child (int *,struct conflict_context*,int ) ;
 int region_conflict ;
 struct nvdimm_bus* walk_to_nvdimm_bus (int *) ;

int nd_region_conflict(struct nd_region *nd_region, resource_size_t start,
  resource_size_t size)
{
 struct nvdimm_bus *nvdimm_bus = walk_to_nvdimm_bus(&nd_region->dev);
 struct conflict_context ctx = {
  .nd_region = nd_region,
  .start = start,
  .size = size,
 };

 return device_for_each_child(&nvdimm_bus->dev, &ctx, region_conflict);
}
