
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int irq; int uartclk; int lock; int mapbase; int membase; int rs485_config; int fifosize; int * dev; int * ops; int flags; int iotype; } ;
struct stm32_port {int wakeirq; int clk; struct uart_port port; TYPE_2__* info; int fifoen; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct TYPE_3__ {int has_fifo; scalar_t__ has_wakeup; int fifosize; } ;
struct TYPE_4__ {TYPE_1__ cfg; } ;


 int EINVAL ;
 int ENODEV ;
 int ENXIO ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int UPF_BOOT_AUTOCONF ;
 int UPIO_MEM ;
 int clk_disable_unprepare (int ) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 void* platform_get_irq (struct platform_device*,int) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int spin_lock_init (int *) ;
 int stm32_config_rs485 ;
 int stm32_init_rs485 (struct uart_port*,struct platform_device*) ;
 int stm32_uart_ops ;

__attribute__((used)) static int stm32_init_port(struct stm32_port *stm32port,
     struct platform_device *pdev)
{
 struct uart_port *port = &stm32port->port;
 struct resource *res;
 int ret;

 port->iotype = UPIO_MEM;
 port->flags = UPF_BOOT_AUTOCONF;
 port->ops = &stm32_uart_ops;
 port->dev = &pdev->dev;
 port->fifosize = stm32port->info->cfg.fifosize;

 ret = platform_get_irq(pdev, 0);
 if (ret <= 0)
  return ret ? : -ENODEV;
 port->irq = ret;

 port->rs485_config = stm32_config_rs485;

 stm32_init_rs485(port, pdev);

 if (stm32port->info->cfg.has_wakeup) {
  stm32port->wakeirq = platform_get_irq(pdev, 1);
  if (stm32port->wakeirq <= 0 && stm32port->wakeirq != -ENXIO)
   return stm32port->wakeirq ? : -ENODEV;
 }

 stm32port->fifoen = stm32port->info->cfg.has_fifo;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 port->membase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(port->membase))
  return PTR_ERR(port->membase);
 port->mapbase = res->start;

 spin_lock_init(&port->lock);

 stm32port->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(stm32port->clk))
  return PTR_ERR(stm32port->clk);


 ret = clk_prepare_enable(stm32port->clk);
 if (ret)
  return ret;

 stm32port->port.uartclk = clk_get_rate(stm32port->clk);
 if (!stm32port->port.uartclk) {
  clk_disable_unprepare(stm32port->clk);
  ret = -EINVAL;
 }

 return ret;
}
