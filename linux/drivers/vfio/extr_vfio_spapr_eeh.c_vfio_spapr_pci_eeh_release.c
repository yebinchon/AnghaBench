
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int eeh_dev_release (struct pci_dev*) ;

void vfio_spapr_pci_eeh_release(struct pci_dev *pdev)
{
 eeh_dev_release(pdev);
}
