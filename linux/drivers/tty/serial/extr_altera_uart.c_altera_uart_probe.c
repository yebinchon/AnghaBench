
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {scalar_t__ mapbase; scalar_t__ irq; int line; TYPE_1__* dev; int flags; int * ops; int iotype; int type; scalar_t__ regshift; int membase; int uartclk; } ;
struct resource {scalar_t__ start; } ;
struct TYPE_3__ {int of_node; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct altera_uart_platform_uart {scalar_t__ mapbase; scalar_t__ irq; scalar_t__ bus_shift; int uartclk; } ;
struct TYPE_4__ {struct uart_port port; } ;


 int ALTERA_UART_SIZE ;
 int CONFIG_SERIAL_ALTERA_UART_MAXPORTS ;
 int EINVAL ;
 int ENOMEM ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int PORT_ALTERA_UART ;
 int SERIAL_IO_MEM ;
 int UPF_BOOT_AUTOCONF ;
 int altera_uart_driver ;
 int altera_uart_ops ;
 TYPE_2__* altera_uart_ports ;
 struct altera_uart_platform_uart* dev_get_platdata (TYPE_1__*) ;
 int ioremap (scalar_t__,int ) ;
 int of_property_read_u32 (int ,char*,int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct uart_port*) ;
 int uart_add_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int altera_uart_probe(struct platform_device *pdev)
{
 struct altera_uart_platform_uart *platp = dev_get_platdata(&pdev->dev);
 struct uart_port *port;
 struct resource *res_mem;
 struct resource *res_irq;
 int i = pdev->id;
 int ret;


 if (i == -1) {
  for (i = 0; i < CONFIG_SERIAL_ALTERA_UART_MAXPORTS; i++)
   if (altera_uart_ports[i].port.mapbase == 0)
    break;
 }

 if (i < 0 || i >= CONFIG_SERIAL_ALTERA_UART_MAXPORTS)
  return -EINVAL;

 port = &altera_uart_ports[i].port;

 res_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res_mem)
  port->mapbase = res_mem->start;
 else if (platp)
  port->mapbase = platp->mapbase;
 else
  return -EINVAL;

 res_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (res_irq)
  port->irq = res_irq->start;
 else if (platp)
  port->irq = platp->irq;


 if (platp)
  port->uartclk = platp->uartclk;
 else {
  ret = of_property_read_u32(pdev->dev.of_node, "clock-frequency",
        &port->uartclk);
  if (ret)
   return ret;
 }

 port->membase = ioremap(port->mapbase, ALTERA_UART_SIZE);
 if (!port->membase)
  return -ENOMEM;

 if (platp)
  port->regshift = platp->bus_shift;
 else
  port->regshift = 0;

 port->line = i;
 port->type = PORT_ALTERA_UART;
 port->iotype = SERIAL_IO_MEM;
 port->ops = &altera_uart_ops;
 port->flags = UPF_BOOT_AUTOCONF;
 port->dev = &pdev->dev;

 platform_set_drvdata(pdev, port);

 uart_add_one_port(&altera_uart_driver, port);

 return 0;
}
