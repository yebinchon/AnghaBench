
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int fifosize; int uartclk; size_t line; struct clk* membase; TYPE_1__* dev; int flags; int * ops; int irq; int iotype; int mapbase; } ;
struct resource {int start; } ;
struct TYPE_3__ {scalar_t__ of_node; } ;
struct platform_device {size_t id; TYPE_1__ dev; } ;
struct clk {int dummy; } ;


 size_t BCM63XX_NR_UARTS ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int UPF_BOOT_AUTOCONF ;
 int UPIO_MEM ;
 int bcm_uart_driver ;
 int bcm_uart_ops ;
 struct clk* clk_get (TYPE_1__*,char*) ;
 int clk_get_rate (struct clk*) ;
 int clk_put (struct clk*) ;
 struct clk* devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 int memset (struct uart_port*,int ,int) ;
 void* of_alias_get_id (scalar_t__,char*) ;
 struct clk* of_clk_get (scalar_t__,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct uart_port*) ;
 struct uart_port* ports ;
 int uart_add_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int bcm_uart_probe(struct platform_device *pdev)
{
 struct resource *res_mem, *res_irq;
 struct uart_port *port;
 struct clk *clk;
 int ret;

 if (pdev->dev.of_node) {
  pdev->id = of_alias_get_id(pdev->dev.of_node, "serial");

  if (pdev->id < 0)
   pdev->id = of_alias_get_id(pdev->dev.of_node, "uart");
 }

 if (pdev->id < 0 || pdev->id >= BCM63XX_NR_UARTS)
  return -EINVAL;

 port = &ports[pdev->id];
 if (port->membase)
  return -EBUSY;
 memset(port, 0, sizeof(*port));

 res_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res_mem)
  return -ENODEV;

 port->mapbase = res_mem->start;
 port->membase = devm_ioremap_resource(&pdev->dev, res_mem);
 if (IS_ERR(port->membase))
  return PTR_ERR(port->membase);

 res_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!res_irq)
  return -ENODEV;

 clk = clk_get(&pdev->dev, "refclk");
 if (IS_ERR(clk) && pdev->dev.of_node)
  clk = of_clk_get(pdev->dev.of_node, 0);

 if (IS_ERR(clk))
  return -ENODEV;

 port->iotype = UPIO_MEM;
 port->irq = res_irq->start;
 port->ops = &bcm_uart_ops;
 port->flags = UPF_BOOT_AUTOCONF;
 port->dev = &pdev->dev;
 port->fifosize = 16;
 port->uartclk = clk_get_rate(clk) / 2;
 port->line = pdev->id;
 clk_put(clk);

 ret = uart_add_one_port(&bcm_uart_driver, port);
 if (ret) {
  ports[pdev->id].membase = ((void*)0);
  return ret;
 }
 platform_set_drvdata(pdev, port);
 return 0;
}
