
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_pme_service_data {int dummy; } ;
struct pcie_device {int irq; struct pci_dev* port; } ;
struct pci_dev {int subordinate; int dev; } ;


 scalar_t__ device_may_wakeup (int *) ;
 int down_read (int *) ;
 int enable_irq_wake (int ) ;
 struct pcie_pme_service_data* get_service_data (struct pcie_device*) ;
 int pci_bus_sem ;
 int pcie_pme_check_wakeup (int ) ;
 int pcie_pme_disable_interrupt (struct pci_dev*,struct pcie_pme_service_data*) ;
 int synchronize_irq (int ) ;
 int up_read (int *) ;

__attribute__((used)) static int pcie_pme_suspend(struct pcie_device *srv)
{
 struct pcie_pme_service_data *data = get_service_data(srv);
 struct pci_dev *port = srv->port;
 bool wakeup;
 int ret;

 if (device_may_wakeup(&port->dev)) {
  wakeup = 1;
 } else {
  down_read(&pci_bus_sem);
  wakeup = pcie_pme_check_wakeup(port->subordinate);
  up_read(&pci_bus_sem);
 }
 if (wakeup) {
  ret = enable_irq_wake(srv->irq);
  if (!ret)
   return 0;
 }

 pcie_pme_disable_interrupt(port, data);

 synchronize_irq(srv->irq);

 return 0;
}
