
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ start; } ;
struct pci_config_window {TYPE_1__ busr; } ;
struct pci_bus {scalar_t__ number; struct pci_config_window* sysdata; } ;


 scalar_t__ PCI_SLOT (unsigned int) ;

__attribute__((used)) static bool pci_dw_valid_device(struct pci_bus *bus, unsigned int devfn)
{
 struct pci_config_window *cfg = bus->sysdata;







 if (bus->number == cfg->busr.start && PCI_SLOT(devfn) > 0)
  return 0;

 return 1;
}
