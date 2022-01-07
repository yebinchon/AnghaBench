
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_info {TYPE_1__* mem; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int memtype; int size; int internal_addr; int addr; } ;


 int UIO_MEM_PHYS ;
 int ioremap (int ,int ) ;
 int pci_resource_len (struct pci_dev*,int) ;
 int pci_resource_start (struct pci_dev*,int) ;

__attribute__((used)) static int sercos3_setup_iomem(struct pci_dev *dev, struct uio_info *info,
          int n, int pci_bar)
{
 info->mem[n].addr = pci_resource_start(dev, pci_bar);
 if (!info->mem[n].addr)
  return -1;
 info->mem[n].internal_addr = ioremap(pci_resource_start(dev, pci_bar),
          pci_resource_len(dev, pci_bar));
 if (!info->mem[n].internal_addr)
  return -1;
 info->mem[n].size = pci_resource_len(dev, pci_bar);
 info->mem[n].memtype = UIO_MEM_PHYS;
 return 0;
}
