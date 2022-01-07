
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus {int id; } ;


 int MKDEV (int ,int ) ;
 int device_destroy (int ,int ) ;
 int nd_class ;
 int nvdimm_bus_major ;

void nvdimm_bus_destroy_ndctl(struct nvdimm_bus *nvdimm_bus)
{
 device_destroy(nd_class, MKDEV(nvdimm_bus_major, nvdimm_bus->id));
}
