
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct platform_device* private_data; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct platform_device {int dummy; } ;
struct pci_dev {int dummy; } ;
struct exar8250 {int * line; } ;


 struct exar8250* pci_get_drvdata (struct pci_dev*) ;
 int platform_device_unregister (struct platform_device*) ;
 struct uart_8250_port* serial8250_get_port (int ) ;

__attribute__((used)) static void pci_xr17v35x_exit(struct pci_dev *pcidev)
{
 struct exar8250 *priv = pci_get_drvdata(pcidev);
 struct uart_8250_port *port = serial8250_get_port(priv->line[0]);
 struct platform_device *pdev = port->port.private_data;

 platform_device_unregister(pdev);
 port->port.private_data = ((void*)0);
}
