
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus {scalar_t__ probe_active; int dev; int wait; } ;


 int nvdimm_bus_lock (int *) ;
 int nvdimm_bus_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void nvdimm_bus_probe_end(struct nvdimm_bus *nvdimm_bus)
{
 nvdimm_bus_lock(&nvdimm_bus->dev);
 if (--nvdimm_bus->probe_active == 0)
  wake_up(&nvdimm_bus->wait);
 nvdimm_bus_unlock(&nvdimm_bus->dev);
}
