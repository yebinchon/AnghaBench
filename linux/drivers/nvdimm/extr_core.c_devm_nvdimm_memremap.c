
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_map {void* mem; int kref; } ;
struct device {int dummy; } ;
typedef int resource_size_t ;


 struct nvdimm_map* alloc_nvdimm_map (struct device*,int ,size_t,unsigned long) ;
 scalar_t__ devm_add_action_or_reset (struct device*,int ,struct nvdimm_map*) ;
 struct nvdimm_map* find_nvdimm_map (struct device*,int ) ;
 int kref_get (int *) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 int nvdimm_map_put ;

void *devm_nvdimm_memremap(struct device *dev, resource_size_t offset,
  size_t size, unsigned long flags)
{
 struct nvdimm_map *nvdimm_map;

 nvdimm_bus_lock(dev);
 nvdimm_map = find_nvdimm_map(dev, offset);
 if (!nvdimm_map)
  nvdimm_map = alloc_nvdimm_map(dev, offset, size, flags);
 else
  kref_get(&nvdimm_map->kref);
 nvdimm_bus_unlock(dev);

 if (!nvdimm_map)
  return ((void*)0);

 if (devm_add_action_or_reset(dev, nvdimm_map_put, nvdimm_map))
  return ((void*)0);

 return nvdimm_map->mem;
}
