
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvdimm_bus {int dev; } ;
struct device {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ device_for_each_child (int *,int *,int ) ;
 int is_namespace_uuid_busy ;
 int is_nvdimm_bus_locked (int *) ;
 struct nvdimm_bus* walk_to_nvdimm_bus (struct device*) ;

bool nd_is_uuid_unique(struct device *dev, u8 *uuid)
{
 struct nvdimm_bus *nvdimm_bus = walk_to_nvdimm_bus(dev);

 if (!nvdimm_bus)
  return 0;
 WARN_ON_ONCE(!is_nvdimm_bus_locked(&nvdimm_bus->dev));
 if (device_for_each_child(&nvdimm_bus->dev, uuid,
    is_namespace_uuid_busy) != 0)
  return 0;
 return 1;
}
