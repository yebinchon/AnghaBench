
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct uart_port {int line; scalar_t__ ignore_status_mask; int fifosize; int * ops; int flags; int iotype; TYPE_1__* dev; int irq; int membase; void* uartclk; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct arc_uart_port {struct uart_port port; void* baud; } ;


 int ARC_UART_TX_FIFO_SIZE ;
 int ARRAY_SIZE (struct arc_uart_port*) ;
 int EINVAL ;
 int ENODEV ;
 int ENXIO ;
 int UPF_BOOT_AUTOCONF ;
 int UPIO_MEM ;
 int arc_serial_pops ;
 int arc_uart_driver ;
 struct arc_uart_port* arc_uart_ports ;
 int dev_err (TYPE_1__*,char*,...) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int of_alias_get_id (struct device_node*,char*) ;
 int of_iomap (struct device_node*,int ) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,void**) ;
 int uart_add_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int arc_serial_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct arc_uart_port *uart;
 struct uart_port *port;
 int dev_id;
 u32 val;


 if (!np)
  return -ENODEV;

 dev_id = of_alias_get_id(np, "serial");
 if (dev_id < 0)
  dev_id = 0;

 if (dev_id >= ARRAY_SIZE(arc_uart_ports)) {
  dev_err(&pdev->dev, "serial%d out of range\n", dev_id);
  return -EINVAL;
 }

 uart = &arc_uart_ports[dev_id];
 port = &uart->port;

 if (of_property_read_u32(np, "clock-frequency", &val)) {
  dev_err(&pdev->dev, "clock-frequency property NOTset\n");
  return -EINVAL;
 }
 port->uartclk = val;

 if (of_property_read_u32(np, "current-speed", &val)) {
  dev_err(&pdev->dev, "current-speed property NOT set\n");
  return -EINVAL;
 }
 uart->baud = val;

 port->membase = of_iomap(np, 0);
 if (!port->membase)

  return -ENXIO;

 port->irq = irq_of_parse_and_map(np, 0);

 port->dev = &pdev->dev;
 port->iotype = UPIO_MEM;
 port->flags = UPF_BOOT_AUTOCONF;
 port->line = dev_id;
 port->ops = &arc_serial_pops;

 port->fifosize = ARC_UART_TX_FIFO_SIZE;





 port->ignore_status_mask = 0;

 return uart_add_one_port(&arc_uart_driver, &arc_uart_ports[dev_id].port);
}
