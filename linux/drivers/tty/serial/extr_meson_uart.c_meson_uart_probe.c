
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int flags; size_t line; int fifosize; int * ops; scalar_t__ x_char; int type; TYPE_1__* dev; int irq; int mapsize; int mapbase; int iotype; } ;
struct resource {int start; } ;
struct TYPE_3__ {scalar_t__ of_node; } ;
struct platform_device {int id; TYPE_1__ dev; } ;


 int AML_UART_PORT_NUM ;
 int AML_UART_PORT_OFFSET ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int PORT_MESON ;
 int UPF_BOOT_AUTOCONF ;
 int UPF_LOW_LATENCY ;
 int UPIO_MEM ;
 int dev_err (TYPE_1__*,char*,size_t) ;
 struct uart_port* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct uart_port** meson_ports ;
 int meson_uart_driver ;
 int meson_uart_ops ;
 int meson_uart_probe_clocks (struct platform_device*,struct uart_port*) ;
 int meson_uart_probe_clocks_legacy (struct platform_device*,struct uart_port*) ;
 int meson_uart_release_port (struct uart_port*) ;
 scalar_t__ meson_uart_request_port (struct uart_port*) ;
 int meson_uart_reset (struct uart_port*) ;
 int of_alias_get_id (scalar_t__,char*) ;
 scalar_t__ of_device_is_compatible (scalar_t__,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct uart_port*) ;
 int resource_size (struct resource*) ;
 int uart_add_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int meson_uart_probe(struct platform_device *pdev)
{
 struct resource *res_mem, *res_irq;
 struct uart_port *port;
 int ret = 0;
 int id = -1;

 if (pdev->dev.of_node)
  pdev->id = of_alias_get_id(pdev->dev.of_node, "serial");

 if (pdev->id < 0) {
  for (id = AML_UART_PORT_OFFSET; id < AML_UART_PORT_NUM; id++) {
   if (!meson_ports[id]) {
    pdev->id = id;
    break;
   }
  }
 }

 if (pdev->id < 0 || pdev->id >= AML_UART_PORT_NUM)
  return -EINVAL;

 res_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res_mem)
  return -ENODEV;

 res_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res_irq)
  return -ENODEV;

 if (meson_ports[pdev->id]) {
  dev_err(&pdev->dev, "port %d already allocated\n", pdev->id);
  return -EBUSY;
 }

 port = devm_kzalloc(&pdev->dev, sizeof(struct uart_port), GFP_KERNEL);
 if (!port)
  return -ENOMEM;


 if (of_device_is_compatible(pdev->dev.of_node, "amlogic,meson-uart"))
  ret = meson_uart_probe_clocks_legacy(pdev, port);
 else
  ret = meson_uart_probe_clocks(pdev, port);

 if (ret)
  return ret;

 port->iotype = UPIO_MEM;
 port->mapbase = res_mem->start;
 port->mapsize = resource_size(res_mem);
 port->irq = res_irq->start;
 port->flags = UPF_BOOT_AUTOCONF | UPF_LOW_LATENCY;
 port->dev = &pdev->dev;
 port->line = pdev->id;
 port->type = PORT_MESON;
 port->x_char = 0;
 port->ops = &meson_uart_ops;
 port->fifosize = 64;

 meson_ports[pdev->id] = port;
 platform_set_drvdata(pdev, port);


 if (meson_uart_request_port(port) >= 0) {
  meson_uart_reset(port);
  meson_uart_release_port(port);
 }

 ret = uart_add_one_port(&meson_uart_driver, port);
 if (ret)
  meson_ports[pdev->id] = ((void*)0);

 return ret;
}
