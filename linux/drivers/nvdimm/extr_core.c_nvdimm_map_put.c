
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_map {int kref; struct nvdimm_bus* nvdimm_bus; } ;
struct nvdimm_bus {int dev; } ;


 int kref_put (int *,int ) ;
 int nvdimm_bus_lock (int *) ;
 int nvdimm_bus_unlock (int *) ;
 int nvdimm_map_release ;

__attribute__((used)) static void nvdimm_map_put(void *data)
{
 struct nvdimm_map *nvdimm_map = data;
 struct nvdimm_bus *nvdimm_bus = nvdimm_map->nvdimm_bus;

 nvdimm_bus_lock(&nvdimm_bus->dev);
 kref_put(&nvdimm_map->kref, nvdimm_map_release);
 nvdimm_bus_unlock(&nvdimm_bus->dev);
}
