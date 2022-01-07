
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvdimm_bus {int badrange; } ;


 int badrange_add (int *,int ,int ) ;

int nvdimm_bus_add_badrange(struct nvdimm_bus *nvdimm_bus, u64 addr, u64 length)
{
 return badrange_add(&nvdimm_bus->badrange, addr, length);
}
