
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ENODEV ;
 int PCIE_PORT_DEVICE_MAXSERVICES ;
 int PCIE_PORT_SERVICE_PME ;
 int PCI_IRQ_LEGACY ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int ) ;
 int pci_irq_vector (struct pci_dev*,int ) ;
 scalar_t__ pcie_pme_no_msi () ;
 scalar_t__ pcie_port_enable_irq_vec (struct pci_dev*,int*,int) ;

__attribute__((used)) static int pcie_init_service_irqs(struct pci_dev *dev, int *irqs, int mask)
{
 int ret, i;

 for (i = 0; i < PCIE_PORT_DEVICE_MAXSERVICES; i++)
  irqs[i] = -1;






 if ((mask & PCIE_PORT_SERVICE_PME) && pcie_pme_no_msi())
  goto legacy_irq;


 if (pcie_port_enable_irq_vec(dev, irqs, mask) == 0)
  return 0;

legacy_irq:

 ret = pci_alloc_irq_vectors(dev, 1, 1, PCI_IRQ_LEGACY);
 if (ret < 0)
  return -ENODEV;

 for (i = 0; i < PCIE_PORT_DEVICE_MAXSERVICES; i++)
  irqs[i] = pci_irq_vector(dev, 0);

 return 0;
}
