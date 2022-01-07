
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_bus {TYPE_1__* self; } ;
struct TYPE_5__ {scalar_t__ pcie_mpss; } ;


 scalar_t__ PCIE_BUS_PEER2PEER ;
 scalar_t__ PCIE_BUS_SAFE ;
 int pci_is_pcie (TYPE_1__*) ;
 int pci_walk_bus (struct pci_bus*,int (*) (TYPE_1__*,scalar_t__*),scalar_t__*) ;
 scalar_t__ pcie_bus_config ;
 int pcie_bus_configure_set (TYPE_1__*,scalar_t__*) ;
 int pcie_find_smpss (TYPE_1__*,scalar_t__*) ;

void pcie_bus_configure_settings(struct pci_bus *bus)
{
 u8 smpss = 0;

 if (!bus->self)
  return;

 if (!pci_is_pcie(bus->self))
  return;






 if (pcie_bus_config == PCIE_BUS_PEER2PEER)
  smpss = 0;

 if (pcie_bus_config == PCIE_BUS_SAFE) {
  smpss = bus->self->pcie_mpss;

  pcie_find_smpss(bus->self, &smpss);
  pci_walk_bus(bus, pcie_find_smpss, &smpss);
 }

 pcie_bus_configure_set(bus->self, &smpss);
 pci_walk_bus(bus, pcie_bus_configure_set, &smpss);
}
