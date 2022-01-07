
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ uartclk; int lock; int mapbase; int * membase; int irq; int * dev; int fifosize; int * ops; int flags; int iotype; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct asc_port {int ** states; int * pinctrl; int * clk; struct uart_port port; } ;


 int ASC_FIFO_SIZE ;
 size_t DEFAULT ;
 int EINVAL ;
 int IORESOURCE_MEM ;
 int IS_ERR (int *) ;
 size_t NO_HW_FLOWCTRL ;
 int PTR_ERR (int *) ;
 int UPF_BOOT_AUTOCONF ;
 int UPIO_MEM ;
 scalar_t__ WARN_ON (int) ;
 int asc_uart_ops ;
 int clk_disable_unprepare (int *) ;
 scalar_t__ clk_get_rate (int *) ;
 int clk_prepare_enable (int *) ;
 int dev_err (int *,char*,int) ;
 int * devm_clk_get (int *,int *) ;
 int * devm_ioremap_resource (int *,struct resource*) ;
 int * devm_pinctrl_get (int *) ;
 void* pinctrl_lookup_state (int *,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int asc_init_port(struct asc_port *ascport,
     struct platform_device *pdev)
{
 struct uart_port *port = &ascport->port;
 struct resource *res;
 int ret;

 port->iotype = UPIO_MEM;
 port->flags = UPF_BOOT_AUTOCONF;
 port->ops = &asc_uart_ops;
 port->fifosize = ASC_FIFO_SIZE;
 port->dev = &pdev->dev;
 port->irq = platform_get_irq(pdev, 0);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 port->membase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(port->membase))
  return PTR_ERR(port->membase);
 port->mapbase = res->start;

 spin_lock_init(&port->lock);

 ascport->clk = devm_clk_get(&pdev->dev, ((void*)0));

 if (WARN_ON(IS_ERR(ascport->clk)))
  return -EINVAL;

 clk_prepare_enable(ascport->clk);
 ascport->port.uartclk = clk_get_rate(ascport->clk);
 WARN_ON(ascport->port.uartclk == 0);
 clk_disable_unprepare(ascport->clk);

 ascport->pinctrl = devm_pinctrl_get(&pdev->dev);
 if (IS_ERR(ascport->pinctrl)) {
  ret = PTR_ERR(ascport->pinctrl);
  dev_err(&pdev->dev, "Failed to get Pinctrl: %d\n", ret);
  return ret;
 }

 ascport->states[DEFAULT] =
  pinctrl_lookup_state(ascport->pinctrl, "default");
 if (IS_ERR(ascport->states[DEFAULT])) {
  ret = PTR_ERR(ascport->states[DEFAULT]);
  dev_err(&pdev->dev,
   "Failed to look up Pinctrl state 'default': %d\n", ret);
  return ret;
 }


 ascport->states[NO_HW_FLOWCTRL] =
  pinctrl_lookup_state(ascport->pinctrl, "no-hw-flowctrl");
 if (IS_ERR(ascport->states[NO_HW_FLOWCTRL]))
  ascport->states[NO_HW_FLOWCTRL] = ((void*)0);

 return 0;
}
