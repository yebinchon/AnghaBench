
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_5__ {size_t line; int irq; scalar_t__ uartclk; int flags; int * ops; int fifosize; scalar_t__ x_char; int mapbase; int iotype; int type; scalar_t__ regshift; TYPE_2__* dev; } ;
struct rda_uart_port {TYPE_1__ port; int clk; } ;
struct TYPE_6__ {scalar_t__ of_node; } ;
struct platform_device {size_t id; TYPE_2__ dev; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PORT_RDA ;
 int PTR_ERR (int ) ;
 size_t RDA_UART_PORT_NUM ;
 int RDA_UART_TX_FIFO_SIZE ;
 int UPF_BOOT_AUTOCONF ;
 int UPF_IOREMAP ;
 int UPF_LOW_LATENCY ;
 int UPIO_MEM ;
 scalar_t__ clk_get_rate (int ) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int devm_clk_get (TYPE_2__*,int *) ;
 struct rda_uart_port* devm_kzalloc (TYPE_2__*,int,int ) ;
 size_t of_alias_get_id (scalar_t__,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rda_uart_port*) ;
 int rda_uart_driver ;
 int rda_uart_ops ;
 struct rda_uart_port** rda_uart_ports ;
 int uart_add_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int rda_uart_probe(struct platform_device *pdev)
{
 struct resource *res_mem;
 struct rda_uart_port *rda_port;
 int ret, irq;

 if (pdev->dev.of_node)
  pdev->id = of_alias_get_id(pdev->dev.of_node, "serial");

 if (pdev->id < 0 || pdev->id >= RDA_UART_PORT_NUM) {
  dev_err(&pdev->dev, "id %d out of range\n", pdev->id);
  return -EINVAL;
 }

 res_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res_mem) {
  dev_err(&pdev->dev, "could not get mem\n");
  return -ENODEV;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 if (rda_uart_ports[pdev->id]) {
  dev_err(&pdev->dev, "port %d already allocated\n", pdev->id);
  return -EBUSY;
 }

 rda_port = devm_kzalloc(&pdev->dev, sizeof(*rda_port), GFP_KERNEL);
 if (!rda_port)
  return -ENOMEM;

 rda_port->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(rda_port->clk)) {
  dev_err(&pdev->dev, "could not get clk\n");
  return PTR_ERR(rda_port->clk);
 }

 rda_port->port.dev = &pdev->dev;
 rda_port->port.regshift = 0;
 rda_port->port.line = pdev->id;
 rda_port->port.type = PORT_RDA;
 rda_port->port.iotype = UPIO_MEM;
 rda_port->port.mapbase = res_mem->start;
 rda_port->port.irq = irq;
 rda_port->port.uartclk = clk_get_rate(rda_port->clk);
 if (rda_port->port.uartclk == 0) {
  dev_err(&pdev->dev, "clock rate is zero\n");
  return -EINVAL;
 }
 rda_port->port.flags = UPF_BOOT_AUTOCONF | UPF_IOREMAP |
          UPF_LOW_LATENCY;
 rda_port->port.x_char = 0;
 rda_port->port.fifosize = RDA_UART_TX_FIFO_SIZE;
 rda_port->port.ops = &rda_uart_ops;

 rda_uart_ports[pdev->id] = rda_port;
 platform_set_drvdata(pdev, rda_port);

 ret = uart_add_one_port(&rda_uart_driver, &rda_port->port);
 if (ret)
  rda_uart_ports[pdev->id] = ((void*)0);

 return ret;
}
