
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_pme_service_data {int noirq; int lock; } ;
struct pci_dev {int dummy; } ;


 int pcie_clear_root_pme_status (struct pci_dev*) ;
 int pcie_pme_interrupt_enable (struct pci_dev*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void pcie_pme_disable_interrupt(struct pci_dev *port,
           struct pcie_pme_service_data *data)
{
 spin_lock_irq(&data->lock);
 pcie_pme_interrupt_enable(port, 0);
 pcie_clear_root_pme_status(port);
 data->noirq = 1;
 spin_unlock_irq(&data->lock);
}
