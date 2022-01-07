
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pci_vpd {scalar_t__ valid; scalar_t__ busy; scalar_t__ cap; int lock; int * ops; int len; } ;
struct pci_dev {int dev_flags; struct pci_vpd* vpd; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int PCI_CAP_ID_VPD ;
 int PCI_DEV_FLAGS_VPD_REF_F0 ;
 int PCI_VPD_MAX_SIZE ;
 struct pci_vpd* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 scalar_t__ pci_find_capability (struct pci_dev*,int ) ;
 int pci_vpd_f0_ops ;
 int pci_vpd_ops ;

int pci_vpd_init(struct pci_dev *dev)
{
 struct pci_vpd *vpd;
 u8 cap;

 cap = pci_find_capability(dev, PCI_CAP_ID_VPD);
 if (!cap)
  return -ENODEV;

 vpd = kzalloc(sizeof(*vpd), GFP_ATOMIC);
 if (!vpd)
  return -ENOMEM;

 vpd->len = PCI_VPD_MAX_SIZE;
 if (dev->dev_flags & PCI_DEV_FLAGS_VPD_REF_F0)
  vpd->ops = &pci_vpd_f0_ops;
 else
  vpd->ops = &pci_vpd_ops;
 mutex_init(&vpd->lock);
 vpd->cap = cap;
 vpd->busy = 0;
 vpd->valid = 0;
 dev->vpd = vpd;
 return 0;
}
