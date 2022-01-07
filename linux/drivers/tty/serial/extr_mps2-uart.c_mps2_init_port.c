
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int fifosize; void* irq; int uartclk; int * dev; int * ops; int flags; int iotype; int mapsize; int mapbase; int membase; } ;
struct mps2_uart_port {int flags; TYPE_1__ port; void* tx_irq; void* rx_irq; int clk; } ;


 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int UART_PORT_COMBINED_IRQ ;
 int UPF_BOOT_AUTOCONF ;
 int UPIO_MEM ;
 int clk_disable_unprepare (int ) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int mps2_uart_pops ;
 void* platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int mps2_init_port(struct platform_device *pdev,
     struct mps2_uart_port *mps_port)
{
 struct resource *res;
 int ret;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 mps_port->port.membase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(mps_port->port.membase))
  return PTR_ERR(mps_port->port.membase);

 mps_port->port.mapbase = res->start;
 mps_port->port.mapsize = resource_size(res);
 mps_port->port.iotype = UPIO_MEM;
 mps_port->port.flags = UPF_BOOT_AUTOCONF;
 mps_port->port.fifosize = 1;
 mps_port->port.ops = &mps2_uart_pops;
 mps_port->port.dev = &pdev->dev;

 mps_port->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(mps_port->clk))
  return PTR_ERR(mps_port->clk);

 ret = clk_prepare_enable(mps_port->clk);
 if (ret)
  return ret;

 mps_port->port.uartclk = clk_get_rate(mps_port->clk);

 clk_disable_unprepare(mps_port->clk);


 if (mps_port->flags & UART_PORT_COMBINED_IRQ) {
  mps_port->port.irq = platform_get_irq(pdev, 0);
 } else {
  mps_port->rx_irq = platform_get_irq(pdev, 0);
  mps_port->tx_irq = platform_get_irq(pdev, 1);
  mps_port->port.irq = platform_get_irq(pdev, 2);
 }

 return ret;
}
