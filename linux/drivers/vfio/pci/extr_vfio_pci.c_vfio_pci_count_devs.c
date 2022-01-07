
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;



__attribute__((used)) static int vfio_pci_count_devs(struct pci_dev *pdev, void *data)
{
 (*(int *)data)++;
 return 0;
}
