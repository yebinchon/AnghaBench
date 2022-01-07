
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pcie_get_readrq (struct pci_dev*) ;
 int pcie_set_readrq (struct pci_dev*,int) ;

__attribute__((used)) static void quirk_brcm_5719_limit_mrrs(struct pci_dev *dev)
{
 u32 rev;

 pci_read_config_dword(dev, 0xf4, &rev);


 if (rev == 0x05719000) {
  int readrq = pcie_get_readrq(dev);
  if (readrq > 2048)
   pcie_set_readrq(dev, 2048);
 }
}
