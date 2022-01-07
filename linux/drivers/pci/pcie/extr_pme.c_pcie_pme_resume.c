
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_pme_service_data {int noirq; int lock; } ;
struct pcie_device {int irq; struct pci_dev* port; } ;
struct pci_dev {int dummy; } ;


 int disable_irq_wake (int ) ;
 struct pcie_pme_service_data* get_service_data (struct pcie_device*) ;
 int pcie_clear_root_pme_status (struct pci_dev*) ;
 int pcie_pme_interrupt_enable (struct pci_dev*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int pcie_pme_resume(struct pcie_device *srv)
{
 struct pcie_pme_service_data *data = get_service_data(srv);

 spin_lock_irq(&data->lock);
 if (data->noirq) {
  struct pci_dev *port = srv->port;

  pcie_clear_root_pme_status(port);
  pcie_pme_interrupt_enable(port, 1);
  data->noirq = 0;
 } else {
  disable_irq_wake(srv->irq);
 }
 spin_unlock_irq(&data->lock);

 return 0;
}
