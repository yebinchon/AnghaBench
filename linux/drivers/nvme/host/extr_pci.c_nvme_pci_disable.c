
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct nvme_dev {int dev; } ;


 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 scalar_t__ pci_is_enabled (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void nvme_pci_disable(struct nvme_dev *dev)
{
 struct pci_dev *pdev = to_pci_dev(dev->dev);

 pci_free_irq_vectors(pdev);

 if (pci_is_enabled(pdev)) {
  pci_disable_pcie_error_reporting(pdev);
  pci_disable_device(pdev);
 }
}
