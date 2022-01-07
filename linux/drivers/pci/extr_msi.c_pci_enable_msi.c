
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int __pci_enable_msi_range (struct pci_dev*,int,int,int *) ;

int pci_enable_msi(struct pci_dev *dev)
{
 int rc = __pci_enable_msi_range(dev, 1, 1, ((void*)0));
 if (rc < 0)
  return rc;
 return 0;
}
