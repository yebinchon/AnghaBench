
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvdimm_bus {TYPE_1__* nd_desc; } ;
struct module {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct module* module; } ;


 scalar_t__ is_nd_region (struct device*) ;
 struct nvdimm_bus* walk_to_nvdimm_bus (struct device*) ;

__attribute__((used)) static struct module *to_bus_provider(struct device *dev)
{

 if (is_nd_region(dev)) {
  struct nvdimm_bus *nvdimm_bus = walk_to_nvdimm_bus(dev);

  return nvdimm_bus->nd_desc->module;
 }
 return ((void*)0);
}
