
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus {int reconfig_mutex; } ;
struct device {int dummy; } ;


 int mutex_lock (int *) ;
 struct nvdimm_bus* walk_to_nvdimm_bus (struct device*) ;

void nvdimm_bus_lock(struct device *dev)
{
 struct nvdimm_bus *nvdimm_bus = walk_to_nvdimm_bus(dev);

 if (!nvdimm_bus)
  return;
 mutex_lock(&nvdimm_bus->reconfig_mutex);
}
