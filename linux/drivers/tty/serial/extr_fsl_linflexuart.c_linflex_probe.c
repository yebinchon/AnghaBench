
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct uart_port {int line; int flags; int * ops; int irq; int iotype; int type; TYPE_1__* dev; int membase; int mapbase; } ;
struct resource {int start; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PORT_LINFLEXUART ;
 int PTR_ERR (int ) ;
 int UART_NR ;
 int UPF_BOOT_AUTOCONF ;
 int UPIO_MEM ;
 int dev_err (TYPE_1__*,char*,int) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct uart_port* devm_kzalloc (TYPE_1__*,int,int ) ;
 int linflex_pops ;
 struct uart_port** linflex_ports ;
 int linflex_reg ;
 int of_alias_get_id (struct device_node*,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct uart_port*) ;
 int uart_add_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int linflex_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct uart_port *sport;
 struct resource *res;
 int ret;

 sport = devm_kzalloc(&pdev->dev, sizeof(*sport), GFP_KERNEL);
 if (!sport)
  return -ENOMEM;

 ret = of_alias_get_id(np, "serial");
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to get alias id, errno %d\n", ret);
  return ret;
 }
 if (ret >= UART_NR) {
  dev_err(&pdev->dev, "driver limited to %d serial ports\n",
   UART_NR);
  return -ENOMEM;
 }

 sport->line = ret;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;

 sport->mapbase = res->start;
 sport->membase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(sport->membase))
  return PTR_ERR(sport->membase);

 sport->dev = &pdev->dev;
 sport->type = PORT_LINFLEXUART;
 sport->iotype = UPIO_MEM;
 sport->irq = platform_get_irq(pdev, 0);
 sport->ops = &linflex_pops;
 sport->flags = UPF_BOOT_AUTOCONF;

 linflex_ports[sport->line] = sport;

 platform_set_drvdata(pdev, sport);

 ret = uart_add_one_port(&linflex_reg, sport);
 if (ret)
  return ret;

 return 0;
}
