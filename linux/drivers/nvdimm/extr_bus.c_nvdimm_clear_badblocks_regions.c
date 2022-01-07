
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvdimm_bus {int dev; } ;
struct clear_badblocks_context {int cleared; int phys; } ;
typedef int phys_addr_t ;


 int device_for_each_child (int *,struct clear_badblocks_context*,int ) ;
 int nvdimm_clear_badblocks_region ;

__attribute__((used)) static void nvdimm_clear_badblocks_regions(struct nvdimm_bus *nvdimm_bus,
  phys_addr_t phys, u64 cleared)
{
 struct clear_badblocks_context ctx = {
  .phys = phys,
  .cleared = cleared,
 };

 device_for_each_child(&nvdimm_bus->dev, &ctx,
   nvdimm_clear_badblocks_region);
}
