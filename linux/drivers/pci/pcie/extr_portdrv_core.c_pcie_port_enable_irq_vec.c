
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int EIO ;
 int PCIE_PORT_MAX_MSI_ENTRIES ;
 int PCIE_PORT_SERVICE_AER ;
 size_t PCIE_PORT_SERVICE_AER_SHIFT ;
 int PCIE_PORT_SERVICE_BWNOTIF ;
 size_t PCIE_PORT_SERVICE_BWNOTIF_SHIFT ;
 int PCIE_PORT_SERVICE_DPC ;
 size_t PCIE_PORT_SERVICE_DPC_SHIFT ;
 int PCIE_PORT_SERVICE_HP ;
 size_t PCIE_PORT_SERVICE_HP_SHIFT ;
 int PCIE_PORT_SERVICE_PME ;
 size_t PCIE_PORT_SERVICE_PME_SHIFT ;
 int PCI_IRQ_MSI ;
 int PCI_IRQ_MSIX ;
 int pci_alloc_irq_vectors (struct pci_dev*,int,int,int) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int ) ;
 int pcie_message_numbers (struct pci_dev*,int,int *,int *,int *) ;

__attribute__((used)) static int pcie_port_enable_irq_vec(struct pci_dev *dev, int *irqs, int mask)
{
 int nr_entries, nvec, pcie_irq;
 u32 pme = 0, aer = 0, dpc = 0;


 nr_entries = pci_alloc_irq_vectors(dev, 1, PCIE_PORT_MAX_MSI_ENTRIES,
   PCI_IRQ_MSIX | PCI_IRQ_MSI);
 if (nr_entries < 0)
  return nr_entries;


 nvec = pcie_message_numbers(dev, mask, &pme, &aer, &dpc);
 if (nvec > nr_entries) {
  pci_free_irq_vectors(dev);
  return -EIO;
 }
 if (nvec != nr_entries) {
  pci_free_irq_vectors(dev);

  nr_entries = pci_alloc_irq_vectors(dev, nvec, nvec,
    PCI_IRQ_MSIX | PCI_IRQ_MSI);
  if (nr_entries < 0)
   return nr_entries;
 }


 if (mask & (PCIE_PORT_SERVICE_PME | PCIE_PORT_SERVICE_HP |
      PCIE_PORT_SERVICE_BWNOTIF)) {
  pcie_irq = pci_irq_vector(dev, pme);
  irqs[PCIE_PORT_SERVICE_PME_SHIFT] = pcie_irq;
  irqs[PCIE_PORT_SERVICE_HP_SHIFT] = pcie_irq;
  irqs[PCIE_PORT_SERVICE_BWNOTIF_SHIFT] = pcie_irq;
 }

 if (mask & PCIE_PORT_SERVICE_AER)
  irqs[PCIE_PORT_SERVICE_AER_SHIFT] = pci_irq_vector(dev, aer);

 if (mask & PCIE_PORT_SERVICE_DPC)
  irqs[PCIE_PORT_SERVICE_DPC_SHIFT] = pci_irq_vector(dev, dpc);

 return 0;
}
