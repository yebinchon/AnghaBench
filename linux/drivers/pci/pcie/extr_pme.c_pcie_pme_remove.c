
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_pme_service_data {int work; } ;
struct pcie_device {int irq; int port; } ;


 int cancel_work_sync (int *) ;
 int free_irq (int ,struct pcie_device*) ;
 struct pcie_pme_service_data* get_service_data (struct pcie_device*) ;
 int kfree (struct pcie_pme_service_data*) ;
 int pcie_pme_disable_interrupt (int ,struct pcie_pme_service_data*) ;

__attribute__((used)) static void pcie_pme_remove(struct pcie_device *srv)
{
 struct pcie_pme_service_data *data = get_service_data(srv);

 pcie_pme_disable_interrupt(srv->port, data);
 free_irq(srv->irq, srv);
 cancel_work_sync(&data->work);
 kfree(data);
}
