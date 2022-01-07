
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nvdimm_bus {int badrange; } ;
typedef int phys_addr_t ;


 int badrange_forget (int *,int ,int) ;
 int nvdimm_clear_badblocks_regions (struct nvdimm_bus*,int ,int) ;

__attribute__((used)) static void nvdimm_account_cleared_poison(struct nvdimm_bus *nvdimm_bus,
  phys_addr_t phys, u64 cleared)
{
 if (cleared > 0)
  badrange_forget(&nvdimm_bus->badrange, phys, cleared);

 if (cleared > 0 && cleared / 512)
  nvdimm_clear_badblocks_regions(nvdimm_bus, phys, cleared);
}
