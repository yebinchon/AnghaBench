
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct nvdimm_bus {struct device dev; } ;



struct device *to_nvdimm_bus_dev(struct nvdimm_bus *nvdimm_bus)
{

 return &nvdimm_bus->dev;
}
