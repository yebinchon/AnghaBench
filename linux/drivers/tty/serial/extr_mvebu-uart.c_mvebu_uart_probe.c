
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct uart_port {int fifosize; size_t line; scalar_t__ membase; int uartclk; struct mvebu_uart* private_data; int mapbase; scalar_t__ irqflags; int irq; int flags; int iotype; scalar_t__ regshift; int * ops; int type; TYPE_1__* dev; int lock; } ;
struct resource {int start; } ;
struct TYPE_6__ {int of_node; } ;
struct platform_device {int id; TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct mvebu_uart_driver_data {int dummy; } ;
struct mvebu_uart {int* irq; scalar_t__ clk; struct uart_port* port; struct mvebu_uart_driver_data* data; } ;


 int CTRL_SOFT_RST ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 scalar_t__ IS_EXTENDED (struct uart_port*) ;
 int MVEBU_NR_UARTS ;
 int PORT_MVEBU ;
 int PTR_ERR (scalar_t__) ;
 scalar_t__ UART_CTRL (struct uart_port*) ;
 size_t UART_IRQ_SUM ;
 size_t UART_RX_IRQ ;
 size_t UART_TX_IRQ ;
 int UPF_FIXED_PORT ;
 int UPIO_MEM32 ;
 int clk_get_rate (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (TYPE_1__*,char*,...) ;
 scalar_t__ devm_clk_get (TYPE_1__*,int *) ;
 scalar_t__ devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct mvebu_uart* devm_kzalloc (TYPE_1__*,int,int ) ;
 int mvebu_uart_driver ;
 int mvebu_uart_of_match ;
 int mvebu_uart_ops ;
 struct uart_port* mvebu_uart_ports ;
 int of_alias_get_id (int ,char*) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_irq_count (struct platform_device*) ;
 int platform_set_drvdata (struct platform_device*,struct mvebu_uart*) ;
 int spin_lock_init (int *) ;
 int uart_add_one_port (int *,struct uart_port*) ;
 int uart_num_counter ;
 int udelay (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mvebu_uart_probe(struct platform_device *pdev)
{
 struct resource *reg = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 const struct of_device_id *match = of_match_device(mvebu_uart_of_match,
          &pdev->dev);
 struct uart_port *port;
 struct mvebu_uart *mvuart;
 int ret, id, irq;

 if (!reg) {
  dev_err(&pdev->dev, "no registers defined\n");
  return -EINVAL;
 }

 if (!match)
  return -ENODEV;


 id = of_alias_get_id(pdev->dev.of_node, "serial");
 if (!pdev->dev.of_node || id < 0)
  pdev->id = uart_num_counter++;
 else
  pdev->id = id;

 if (pdev->id >= MVEBU_NR_UARTS) {
  dev_err(&pdev->dev, "cannot have more than %d UART ports\n",
   MVEBU_NR_UARTS);
  return -EINVAL;
 }

 port = &mvebu_uart_ports[pdev->id];

 spin_lock_init(&port->lock);

 port->dev = &pdev->dev;
 port->type = PORT_MVEBU;
 port->ops = &mvebu_uart_ops;
 port->regshift = 0;

 port->fifosize = 32;
 port->iotype = UPIO_MEM32;
 port->flags = UPF_FIXED_PORT;
 port->line = pdev->id;






 port->irq = 0;
 port->irqflags = 0;
 port->mapbase = reg->start;

 port->membase = devm_ioremap_resource(&pdev->dev, reg);
 if (IS_ERR(port->membase))
  return -PTR_ERR(port->membase);

 mvuart = devm_kzalloc(&pdev->dev, sizeof(struct mvebu_uart),
         GFP_KERNEL);
 if (!mvuart)
  return -ENOMEM;


 mvuart->data = (struct mvebu_uart_driver_data *)match->data;
 mvuart->port = port;

 port->private_data = mvuart;
 platform_set_drvdata(pdev, mvuart);


 mvuart->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(mvuart->clk)) {
  if (PTR_ERR(mvuart->clk) == -EPROBE_DEFER)
   return PTR_ERR(mvuart->clk);

  if (IS_EXTENDED(port)) {
   dev_err(&pdev->dev, "unable to get UART clock\n");
   return PTR_ERR(mvuart->clk);
  }
 } else {
  if (!clk_prepare_enable(mvuart->clk))
   port->uartclk = clk_get_rate(mvuart->clk);
 }


 if (platform_irq_count(pdev) == 1) {

  irq = platform_get_irq(pdev, 0);
  if (irq < 0)
   return irq;

  mvuart->irq[UART_IRQ_SUM] = irq;
 } else {





  irq = platform_get_irq_byname(pdev, "uart-rx");
  if (irq < 0)
   return irq;

  mvuart->irq[UART_RX_IRQ] = irq;

  irq = platform_get_irq_byname(pdev, "uart-tx");
  if (irq < 0)
   return irq;

  mvuart->irq[UART_TX_IRQ] = irq;
 }


 writel(CTRL_SOFT_RST, port->membase + UART_CTRL(port));
 udelay(1);
 writel(0, port->membase + UART_CTRL(port));

 ret = uart_add_one_port(&mvebu_uart_driver, port);
 if (ret)
  return ret;
 return 0;
}
