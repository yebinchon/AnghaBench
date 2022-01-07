
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ release; } ;


 scalar_t__ nvdimm_bus_release ;

bool is_nvdimm_bus(struct device *dev)
{
 return dev->release == nvdimm_bus_release;
}
