
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int pme_poll; scalar_t__ current_state; int subordinate; int dev; scalar_t__ pme_support; } ;
struct acpi_device_wakeup_context {int dev; } ;


 scalar_t__ PCI_D3cold ;
 int pci_check_pme_status (struct pci_dev*) ;
 int pci_pme_wakeup_bus (int ) ;
 int pci_wakeup_event (struct pci_dev*) ;
 int pm_request_resume (int *) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void pci_acpi_wake_dev(struct acpi_device_wakeup_context *context)
{
 struct pci_dev *pci_dev;

 pci_dev = to_pci_dev(context->dev);

 if (pci_dev->pme_poll)
  pci_dev->pme_poll = 0;

 if (pci_dev->current_state == PCI_D3cold) {
  pci_wakeup_event(pci_dev);
  pm_request_resume(&pci_dev->dev);
  return;
 }


 if (pci_dev->pme_support)
  pci_check_pme_status(pci_dev);

 pci_wakeup_event(pci_dev);
 pm_request_resume(&pci_dev->dev);

 pci_pme_wakeup_bus(pci_dev->subordinate);
}
