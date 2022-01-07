
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int vpd; } ;


 int kfree (int ) ;

void pci_vpd_release(struct pci_dev *dev)
{
 kfree(dev->vpd);
}
