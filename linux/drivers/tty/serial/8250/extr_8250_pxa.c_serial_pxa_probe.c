
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int line; int regshift; int fifosize; int flags; struct pxa8250_data* private_data; int pm; int uartclk; TYPE_2__* dev; int irq; int mapbase; int iotype; int type; } ;
struct uart_8250_port {int dl_write; TYPE_1__ port; } ;
struct resource {int start; } ;
struct pxa8250_data {int line; int clk; } ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PORT_XSCALE ;
 int PTR_ERR (int ) ;
 int UPF_IOREMAP ;
 int UPF_SKIP_TEST ;
 int UPIO_MEM32 ;
 int clk_get_rate (int ) ;
 int clk_prepare (int ) ;
 int clk_unprepare (int ) ;
 int devm_clk_get (TYPE_2__*,int *) ;
 struct pxa8250_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 int of_alias_get_id (int ,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pxa8250_data*) ;
 int serial8250_register_8250_port (struct uart_8250_port*) ;
 int serial_pxa_dl_write ;
 int serial_pxa_pm ;

__attribute__((used)) static int serial_pxa_probe(struct platform_device *pdev)
{
 struct uart_8250_port uart = {};
 struct pxa8250_data *data;
 struct resource *mmres, *irqres;
 int ret;

 mmres = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 irqres = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 if (!mmres || !irqres)
  return -ENODEV;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(data->clk))
  return PTR_ERR(data->clk);

 ret = clk_prepare(data->clk);
 if (ret)
  return ret;

 ret = of_alias_get_id(pdev->dev.of_node, "serial");
 if (ret >= 0)
  uart.port.line = ret;

 uart.port.type = PORT_XSCALE;
 uart.port.iotype = UPIO_MEM32;
 uart.port.mapbase = mmres->start;
 uart.port.regshift = 2;
 uart.port.irq = irqres->start;
 uart.port.fifosize = 64;
 uart.port.flags = UPF_IOREMAP | UPF_SKIP_TEST;
 uart.port.dev = &pdev->dev;
 uart.port.uartclk = clk_get_rate(data->clk);
 uart.port.pm = serial_pxa_pm;
 uart.port.private_data = data;
 uart.dl_write = serial_pxa_dl_write;

 ret = serial8250_register_8250_port(&uart);
 if (ret < 0)
  goto err_clk;

 data->line = ret;

 platform_set_drvdata(pdev, data);

 return 0;

 err_clk:
 clk_unprepare(data->clk);
 return ret;
}
