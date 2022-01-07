
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus {int dev; } ;


 int device_unregister (int *) ;

void nvdimm_bus_unregister(struct nvdimm_bus *nvdimm_bus)
{
 if (!nvdimm_bus)
  return;
 device_unregister(&nvdimm_bus->dev);
}
