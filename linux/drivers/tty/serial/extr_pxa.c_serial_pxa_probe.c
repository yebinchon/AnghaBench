
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fifosize; int flags; int line; int membase; int uartclk; int * dev; int * ops; int irq; int mapbase; int iotype; int type; } ;
struct uart_pxa_port {int clk; TYPE_1__ port; int name; } ;
struct resource {int start; } ;
struct platform_device {int id; int dev; } ;


 int ARRAY_SIZE (struct uart_pxa_port**) ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PORT_PXA ;
 int PTR_ERR (int ) ;
 scalar_t__ PXA_NAME_LEN ;
 int UPF_BOOT_AUTOCONF ;
 int UPF_IOREMAP ;
 int UPIO_MEM ;
 int clk_get (int *,int *) ;
 int clk_get_rate (int ) ;
 int clk_prepare (int ) ;
 int clk_put (int ) ;
 int clk_unprepare (int ) ;
 int dev_err (int *,char*,int) ;
 int ioremap (int ,int ) ;
 int kfree (struct uart_pxa_port*) ;
 struct uart_pxa_port* kzalloc (int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct uart_pxa_port*) ;
 int resource_size (struct resource*) ;
 int serial_pxa_pops ;
 struct uart_pxa_port** serial_pxa_ports ;
 int serial_pxa_probe_dt (struct platform_device*,struct uart_pxa_port*) ;
 int serial_pxa_reg ;
 int snprintf (int ,scalar_t__,char*,int) ;
 int uart_add_one_port (int *,TYPE_1__*) ;

__attribute__((used)) static int serial_pxa_probe(struct platform_device *dev)
{
 struct uart_pxa_port *sport;
 struct resource *mmres, *irqres;
 int ret;

 mmres = platform_get_resource(dev, IORESOURCE_MEM, 0);
 irqres = platform_get_resource(dev, IORESOURCE_IRQ, 0);
 if (!mmres || !irqres)
  return -ENODEV;

 sport = kzalloc(sizeof(struct uart_pxa_port), GFP_KERNEL);
 if (!sport)
  return -ENOMEM;

 sport->clk = clk_get(&dev->dev, ((void*)0));
 if (IS_ERR(sport->clk)) {
  ret = PTR_ERR(sport->clk);
  goto err_free;
 }

 ret = clk_prepare(sport->clk);
 if (ret) {
  clk_put(sport->clk);
  goto err_free;
 }

 sport->port.type = PORT_PXA;
 sport->port.iotype = UPIO_MEM;
 sport->port.mapbase = mmres->start;
 sport->port.irq = irqres->start;
 sport->port.fifosize = 64;
 sport->port.ops = &serial_pxa_pops;
 sport->port.dev = &dev->dev;
 sport->port.flags = UPF_IOREMAP | UPF_BOOT_AUTOCONF;
 sport->port.uartclk = clk_get_rate(sport->clk);

 ret = serial_pxa_probe_dt(dev, sport);
 if (ret > 0)
  sport->port.line = dev->id;
 else if (ret < 0)
  goto err_clk;
 if (sport->port.line >= ARRAY_SIZE(serial_pxa_ports)) {
  dev_err(&dev->dev, "serial%d out of range\n", sport->port.line);
  ret = -EINVAL;
  goto err_clk;
 }
 snprintf(sport->name, PXA_NAME_LEN - 1, "UART%d", sport->port.line + 1);

 sport->port.membase = ioremap(mmres->start, resource_size(mmres));
 if (!sport->port.membase) {
  ret = -ENOMEM;
  goto err_clk;
 }

 serial_pxa_ports[sport->port.line] = sport;

 uart_add_one_port(&serial_pxa_reg, &sport->port);
 platform_set_drvdata(dev, sport);

 return 0;

 err_clk:
 clk_unprepare(sport->clk);
 clk_put(sport->clk);
 err_free:
 kfree(sport);
 return ret;
}
