
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm_bus {int dev; } ;


 int ENXIO ;
 int count_dimms ;
 int dev_dbg (int *,char*,int) ;
 int device_for_each_child (int *,int*,int ) ;
 int nd_synchronize () ;

int nvdimm_bus_check_dimm_count(struct nvdimm_bus *nvdimm_bus, int dimm_count)
{
 int count = 0;

 nd_synchronize();

 device_for_each_child(&nvdimm_bus->dev, &count, count_dimms);
 dev_dbg(&nvdimm_bus->dev, "count: %d\n", count);
 if (count != dimm_count)
  return -ENXIO;
 return 0;
}
