
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_bus {scalar_t__ number; } ;
struct altera_pcie {scalar_t__ root_bus_nr; TYPE_2__* pcie_data; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_link_status ) (struct altera_pcie*) ;} ;


 int stub1 (struct altera_pcie*) ;

__attribute__((used)) static bool altera_pcie_valid_device(struct altera_pcie *pcie,
         struct pci_bus *bus, int dev)
{

 if (bus->number != pcie->root_bus_nr) {
  if (!pcie->pcie_data->ops->get_link_status(pcie))
   return 0;
 }


 if (bus->number == pcie->root_bus_nr && dev > 0)
  return 0;

  return 1;
}
