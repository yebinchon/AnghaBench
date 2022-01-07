
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int private_data; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct pci_dev {scalar_t__ vendor; } ;


 scalar_t__ PCI_VENDOR_ID_EXAR ;
 int __xr17v35x_register_gpio (struct pci_dev*,int ) ;
 int exar_gpio_properties ;

__attribute__((used)) static int xr17v35x_register_gpio(struct pci_dev *pcidev,
      struct uart_8250_port *port)
{
 if (pcidev->vendor == PCI_VENDOR_ID_EXAR)
  port->port.private_data =
   __xr17v35x_register_gpio(pcidev, exar_gpio_properties);

 return 0;
}
