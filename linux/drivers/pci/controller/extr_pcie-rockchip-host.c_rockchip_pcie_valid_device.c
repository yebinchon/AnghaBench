
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pcie {scalar_t__ root_bus_nr; } ;
struct pci_bus {scalar_t__ number; scalar_t__ primary; } ;



__attribute__((used)) static int rockchip_pcie_valid_device(struct rockchip_pcie *rockchip,
          struct pci_bus *bus, int dev)
{

 if (bus->number == rockchip->root_bus_nr && dev > 0)
  return 0;





 if (bus->primary == rockchip->root_bus_nr && dev > 0)
  return 0;

 return 1;
}
