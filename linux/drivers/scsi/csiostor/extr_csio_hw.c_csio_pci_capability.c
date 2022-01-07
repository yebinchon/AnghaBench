
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_find_capability (struct pci_dev*,int) ;

__attribute__((used)) static int
csio_pci_capability(struct pci_dev *pdev, int cap, int *pos)
{
 *pos = pci_find_capability(pdev, cap);
 if (*pos)
  return 0;

 return -1;
}
