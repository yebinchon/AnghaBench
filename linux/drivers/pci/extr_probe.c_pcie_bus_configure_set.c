
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int pcie_mpss; } ;


 scalar_t__ PCIE_BUS_DEFAULT ;
 scalar_t__ PCIE_BUS_TUNE_OFF ;
 int pci_info (struct pci_dev*,char*,int,int,int,int ) ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pcie_bus_config ;
 int pcie_get_mps (struct pci_dev*) ;
 int pcie_get_readrq (struct pci_dev*) ;
 int pcie_write_mps (struct pci_dev*,int) ;
 int pcie_write_mrrs (struct pci_dev*) ;

__attribute__((used)) static int pcie_bus_configure_set(struct pci_dev *dev, void *data)
{
 int mps, orig_mps;

 if (!pci_is_pcie(dev))
  return 0;

 if (pcie_bus_config == PCIE_BUS_TUNE_OFF ||
     pcie_bus_config == PCIE_BUS_DEFAULT)
  return 0;

 mps = 128 << *(u8 *)data;
 orig_mps = pcie_get_mps(dev);

 pcie_write_mps(dev, mps);
 pcie_write_mrrs(dev);

 pci_info(dev, "Max Payload Size set to %4d/%4d (was %4d), Max Read Rq %4d\n",
   pcie_get_mps(dev), 128 << dev->pcie_mpss,
   orig_mps, pcie_get_readrq(dev));

 return 0;
}
