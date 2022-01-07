
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_pme_service_data {struct pcie_device* srv; int work; int lock; } ;
struct pcie_device {int irq; struct pci_dev* port; } ;
struct pci_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int IRQF_SHARED ;
 int kfree (struct pcie_pme_service_data*) ;
 struct pcie_pme_service_data* kzalloc (int,int ) ;
 int pci_info (struct pci_dev*,char*,int ) ;
 int pcie_clear_root_pme_status (struct pci_dev*) ;
 int pcie_pme_interrupt_enable (struct pci_dev*,int) ;
 int pcie_pme_irq ;
 int pcie_pme_mark_devices (struct pci_dev*) ;
 int pcie_pme_work_fn ;
 int request_irq (int ,int ,int ,char*,struct pcie_device*) ;
 int set_service_data (struct pcie_device*,struct pcie_pme_service_data*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int pcie_pme_probe(struct pcie_device *srv)
{
 struct pci_dev *port;
 struct pcie_pme_service_data *data;
 int ret;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 spin_lock_init(&data->lock);
 INIT_WORK(&data->work, pcie_pme_work_fn);
 data->srv = srv;
 set_service_data(srv, data);

 port = srv->port;
 pcie_pme_interrupt_enable(port, 0);
 pcie_clear_root_pme_status(port);

 ret = request_irq(srv->irq, pcie_pme_irq, IRQF_SHARED, "PCIe PME", srv);
 if (ret) {
  kfree(data);
  return ret;
 }

 pci_info(port, "Signaling with IRQ %d\n", srv->irq);

 pcie_pme_mark_devices(port);
 pcie_pme_interrupt_enable(port, 1);
 return 0;
}
