
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus {scalar_t__ probe_active; int wait; } ;
struct device {int dummy; } ;


 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 int wait_event (int ,int) ;
 struct nvdimm_bus* walk_to_nvdimm_bus (struct device*) ;

void wait_nvdimm_bus_probe_idle(struct device *dev)
{
 struct nvdimm_bus *nvdimm_bus = walk_to_nvdimm_bus(dev);

 do {
  if (nvdimm_bus->probe_active == 0)
   break;
  nvdimm_bus_unlock(dev);
  nd_device_unlock(dev);
  wait_event(nvdimm_bus->wait,
    nvdimm_bus->probe_active == 0);
  nd_device_lock(dev);
  nvdimm_bus_lock(dev);
 } while (1);
}
