
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int line; int * dev; int flags; int * ops; int iotype; int type; int membase; int mapbase; int irq; } ;
struct resource {int start; } ;
struct platform_device {int id; int dev; } ;
struct altera_jtaguart_platform_uart {int irq; int mapbase; } ;
struct TYPE_2__ {struct uart_port port; } ;


 int ALTERA_JTAGUART_MAXPORTS ;
 int ALTERA_JTAGUART_SIZE ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int PORT_ALTERA_JTAGUART ;
 int SERIAL_IO_MEM ;
 int UPF_BOOT_AUTOCONF ;
 int altera_jtaguart_driver ;
 int altera_jtaguart_ops ;
 TYPE_1__* altera_jtaguart_ports ;
 struct altera_jtaguart_platform_uart* dev_get_platdata (int *) ;
 int ioremap (int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int uart_add_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int altera_jtaguart_probe(struct platform_device *pdev)
{
 struct altera_jtaguart_platform_uart *platp =
   dev_get_platdata(&pdev->dev);
 struct uart_port *port;
 struct resource *res_irq, *res_mem;
 int i = pdev->id;


 if (i == -1)
  i = 0;

 if (i >= ALTERA_JTAGUART_MAXPORTS)
  return -EINVAL;

 port = &altera_jtaguart_ports[i].port;

 res_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res_mem)
  port->mapbase = res_mem->start;
 else if (platp)
  port->mapbase = platp->mapbase;
 else
  return -ENODEV;

 res_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (res_irq)
  port->irq = res_irq->start;
 else if (platp)
  port->irq = platp->irq;
 else
  return -ENODEV;

 port->membase = ioremap(port->mapbase, ALTERA_JTAGUART_SIZE);
 if (!port->membase)
  return -ENOMEM;

 port->line = i;
 port->type = PORT_ALTERA_JTAGUART;
 port->iotype = SERIAL_IO_MEM;
 port->ops = &altera_jtaguart_ops;
 port->flags = UPF_BOOT_AUTOCONF;
 port->dev = &pdev->dev;

 uart_add_one_port(&altera_jtaguart_driver, port);

 return 0;
}
