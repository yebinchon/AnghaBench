
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int pcie_mpss; TYPE_1__* bus; } ;
struct TYPE_2__ {scalar_t__ self; } ;


 scalar_t__ PCIE_BUS_PERFORMANCE ;
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 int min (int,int ) ;
 int pci_err (struct pci_dev*,char*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 scalar_t__ pcie_bus_config ;
 int pcie_get_mps (scalar_t__) ;
 int pcie_set_mps (struct pci_dev*,int) ;

__attribute__((used)) static void pcie_write_mps(struct pci_dev *dev, int mps)
{
 int rc;

 if (pcie_bus_config == PCIE_BUS_PERFORMANCE) {
  mps = 128 << dev->pcie_mpss;

  if (pci_pcie_type(dev) != PCI_EXP_TYPE_ROOT_PORT &&
      dev->bus->self)
   mps = min(mps, pcie_get_mps(dev->bus->self));
 }

 rc = pcie_set_mps(dev, mps);
 if (rc)
  pci_err(dev, "Failed attempting to set the MPS\n");
}
