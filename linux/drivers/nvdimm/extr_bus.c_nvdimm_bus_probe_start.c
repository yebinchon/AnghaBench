
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus {int dev; int probe_active; } ;


 int nvdimm_bus_lock (int *) ;
 int nvdimm_bus_unlock (int *) ;

__attribute__((used)) static void nvdimm_bus_probe_start(struct nvdimm_bus *nvdimm_bus)
{
 nvdimm_bus_lock(&nvdimm_bus->dev);
 nvdimm_bus->probe_active++;
 nvdimm_bus_unlock(&nvdimm_bus->dev);
}
