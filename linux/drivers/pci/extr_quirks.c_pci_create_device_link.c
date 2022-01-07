
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {unsigned int class; int dev; int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;


 int DL_FLAG_PM_RUNTIME ;
 int DL_FLAG_STATELESS ;
 int PCI_DEVFN (int ,unsigned int) ;
 unsigned int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;
 scalar_t__ device_link_add (int *,int *,int) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_domain_nr (TYPE_1__*) ;
 int pci_err (struct pci_dev*,char*,int ) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int ,int ,int ) ;
 int pci_info (struct pci_dev*,char*,int ) ;
 int pci_name (struct pci_dev*) ;
 int pm_runtime_allow (int *) ;

__attribute__((used)) static void pci_create_device_link(struct pci_dev *pdev, unsigned int consumer,
       unsigned int supplier, unsigned int class,
       unsigned int class_shift)
{
 struct pci_dev *supplier_pdev;

 if (PCI_FUNC(pdev->devfn) != consumer)
  return;

 supplier_pdev = pci_get_domain_bus_and_slot(pci_domain_nr(pdev->bus),
    pdev->bus->number,
    PCI_DEVFN(PCI_SLOT(pdev->devfn), supplier));
 if (!supplier_pdev || (supplier_pdev->class >> class_shift) != class) {
  pci_dev_put(supplier_pdev);
  return;
 }

 if (device_link_add(&pdev->dev, &supplier_pdev->dev,
       DL_FLAG_STATELESS | DL_FLAG_PM_RUNTIME))
  pci_info(pdev, "D0 power state depends on %s\n",
    pci_name(supplier_pdev));
 else
  pci_err(pdev, "Cannot enforce power dependency on %s\n",
   pci_name(supplier_pdev));

 pm_runtime_allow(&pdev->dev);
 pci_dev_put(supplier_pdev);
}
