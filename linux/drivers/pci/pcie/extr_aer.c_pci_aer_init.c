
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int aer_stats; scalar_t__ aer_cap; } ;
struct aer_stats {int dummy; } ;


 int GFP_KERNEL ;
 int PCI_EXT_CAP_ID_ERR ;
 int kzalloc (int,int ) ;
 int pci_cleanup_aer_error_status_regs (struct pci_dev*) ;
 scalar_t__ pci_find_ext_capability (struct pci_dev*,int ) ;

void pci_aer_init(struct pci_dev *dev)
{
 dev->aer_cap = pci_find_ext_capability(dev, PCI_EXT_CAP_ID_ERR);

 if (dev->aer_cap)
  dev->aer_stats = kzalloc(sizeof(struct aer_stats), GFP_KERNEL);

 pci_cleanup_aer_error_status_regs(dev);
}
