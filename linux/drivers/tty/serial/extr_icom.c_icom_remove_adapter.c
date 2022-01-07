
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct icom_port {scalar_t__ status; TYPE_1__* dram; int uart_port; } ;
struct icom_adapter {int numb_ports; TYPE_2__* pci_dev; int base_addr; struct icom_port* port_info; } ;
struct TYPE_4__ {int irq; int dev; } ;
struct TYPE_3__ {int osr; } ;


 scalar_t__ ICOM_PORT_ACTIVE ;
 int dev_info (int *,char*) ;
 int free_irq (int ,void*) ;
 int free_port_memory (struct icom_port*) ;
 int icom_free_adapter (struct icom_adapter*) ;
 int icom_uart_driver ;
 int iounmap (int ) ;
 int msleep (int) ;
 int pci_release_regions (TYPE_2__*) ;
 int stop_processor (struct icom_port*) ;
 int uart_remove_one_port (int *,int *) ;
 int writeb (int,int *) ;

__attribute__((used)) static void icom_remove_adapter(struct icom_adapter *icom_adapter)
{
 struct icom_port *icom_port;
 int index;

 for (index = 0; index < icom_adapter->numb_ports; index++) {
  icom_port = &icom_adapter->port_info[index];

  if (icom_port->status == ICOM_PORT_ACTIVE) {
   dev_info(&icom_adapter->pci_dev->dev,
     "Device removed\n");

   uart_remove_one_port(&icom_uart_driver,
          &icom_port->uart_port);


   writeb(0x00, &icom_port->dram->osr);


   msleep(100);


   stop_processor(icom_port);

   free_port_memory(icom_port);
  }
 }

 free_irq(icom_adapter->pci_dev->irq, (void *) icom_adapter);
 iounmap(icom_adapter->base_addr);
 pci_release_regions(icom_adapter->pci_dev);
 icom_free_adapter(icom_adapter);
}
