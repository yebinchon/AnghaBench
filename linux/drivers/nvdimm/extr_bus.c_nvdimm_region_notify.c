
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus {int dummy; } ;
struct nd_region {int dev; } ;
typedef enum nvdimm_event { ____Placeholder_nvdimm_event } nvdimm_event ;


 int nd_device_notify (int *,int) ;
 struct nvdimm_bus* walk_to_nvdimm_bus (int *) ;

void nvdimm_region_notify(struct nd_region *nd_region, enum nvdimm_event event)
{
 struct nvdimm_bus *nvdimm_bus = walk_to_nvdimm_bus(&nd_region->dev);

 if (!nvdimm_bus)
  return;


 nd_device_notify(&nd_region->dev, event);
}
