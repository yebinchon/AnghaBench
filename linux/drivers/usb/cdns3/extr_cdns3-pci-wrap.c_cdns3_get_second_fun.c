
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ devfn; int device; int vendor; } ;


 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct pci_dev *cdns3_get_second_fun(struct pci_dev *pdev)
{
 struct pci_dev *func;







 func = pci_get_device(pdev->vendor, pdev->device, ((void*)0));
 if (unlikely(!func))
  return ((void*)0);

 if (func->devfn == pdev->devfn) {
  func = pci_get_device(pdev->vendor, pdev->device, func);
  if (unlikely(!func))
   return ((void*)0);
 }

 return func;
}
