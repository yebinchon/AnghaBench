
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ msix_enabled; scalar_t__ msi_enabled; } ;
typedef enum pci_lost_interrupt_reason { ____Placeholder_pci_lost_interrupt_reason } pci_lost_interrupt_reason ;


 int PCI_LOST_IRQ_DISABLE_ACPI ;
 int PCI_LOST_IRQ_DISABLE_MSI ;
 int PCI_LOST_IRQ_DISABLE_MSIX ;
 int PCI_LOST_IRQ_NO_INFORMATION ;
 scalar_t__ acpi_disabled ;
 scalar_t__ acpi_noirq ;
 int pci_note_irq_problem (struct pci_dev*,char*) ;

enum pci_lost_interrupt_reason pci_lost_interrupt(struct pci_dev *pdev)
{
 if (pdev->msi_enabled || pdev->msix_enabled) {
  enum pci_lost_interrupt_reason ret;

  if (pdev->msix_enabled) {
   pci_note_irq_problem(pdev, "MSIX routing failure");
   ret = PCI_LOST_IRQ_DISABLE_MSIX;
  } else {
   pci_note_irq_problem(pdev, "MSI routing failure");
   ret = PCI_LOST_IRQ_DISABLE_MSI;
  }
  return ret;
 }







 pci_note_irq_problem(pdev, "unknown cause (not MSI or ACPI)");
 return PCI_LOST_IRQ_NO_INFORMATION;
}
