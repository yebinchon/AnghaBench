
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_12__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_11__ {int irq; int fifosize; int line; int lock; int type; int * ops; TYPE_4__* dev; int uartclk; int iotype; struct clk* membase; int mapbase; } ;
struct digicolor_port {TYPE_1__ port; int rx_poll_work; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;


 int DIGICOLOR_USART_NR ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PORT_DIGICOLOR ;
 int PTR_ERR (struct clk*) ;
 int UPIO_MEM ;
 int clk_get_rate (struct clk*) ;
 int dev_err (TYPE_4__*,char*) ;
 int dev_name (TYPE_4__*) ;
 struct clk* devm_clk_get (TYPE_4__*,int *) ;
 struct clk* devm_ioremap_resource (TYPE_4__*,struct resource*) ;
 struct digicolor_port* devm_kzalloc (TYPE_4__*,int,int ) ;
 int devm_request_irq (TYPE_4__*,int,int ,int ,int ,TYPE_1__*) ;
 TYPE_1__** digicolor_ports ;
 int digicolor_rx_poll ;
 int digicolor_uart ;
 int digicolor_uart_int ;
 int digicolor_uart_ops ;
 int of_alias_get_id (struct device_node*,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,TYPE_1__*) ;
 int spin_lock_init (int *) ;
 int uart_add_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int digicolor_uart_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 int irq, ret, index;
 struct digicolor_port *dp;
 struct resource *res;
 struct clk *uart_clk;

 if (!np) {
  dev_err(&pdev->dev, "Missing device tree node\n");
  return -ENXIO;
 }

 index = of_alias_get_id(np, "serial");
 if (index < 0 || index >= DIGICOLOR_USART_NR)
  return -EINVAL;

 dp = devm_kzalloc(&pdev->dev, sizeof(*dp), GFP_KERNEL);
 if (!dp)
  return -ENOMEM;

 uart_clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(uart_clk))
  return PTR_ERR(uart_clk);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 dp->port.mapbase = res->start;
 dp->port.membase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(dp->port.membase))
  return PTR_ERR(dp->port.membase);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;
 dp->port.irq = irq;

 dp->port.iotype = UPIO_MEM;
 dp->port.uartclk = clk_get_rate(uart_clk);
 dp->port.fifosize = 16;
 dp->port.dev = &pdev->dev;
 dp->port.ops = &digicolor_uart_ops;
 dp->port.line = index;
 dp->port.type = PORT_DIGICOLOR;
 spin_lock_init(&dp->port.lock);

 digicolor_ports[index] = &dp->port;
 platform_set_drvdata(pdev, &dp->port);

 INIT_DELAYED_WORK(&dp->rx_poll_work, digicolor_rx_poll);

 ret = devm_request_irq(&pdev->dev, dp->port.irq, digicolor_uart_int, 0,
          dev_name(&pdev->dev), &dp->port);
 if (ret)
  return ret;

 return uart_add_one_port(&digicolor_uart, &dp->port);
}
