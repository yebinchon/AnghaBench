
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ mmio_enabled (struct pci_dev*) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int) ;

__attribute__((used)) static int mmio_resource_enabled(struct pci_dev *pdev, int idx)
{
 return pci_resource_start(pdev, idx) && mmio_enabled(pdev);
}
