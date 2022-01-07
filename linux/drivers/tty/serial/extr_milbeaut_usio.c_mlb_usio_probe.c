
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct uart_port {int irq; int fifosize; int flags; int line; TYPE_1__* dev; int * ops; int iotype; int uartclk; int membase; void* private_data; } ;
struct resource {int start; } ;
struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct clk {int dummy; } ;


 int ENODEV ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 size_t RX ;
 size_t TX ;
 int UPF_BOOT_AUTOCONF ;
 int UPF_SPD_VHI ;
 int UPIO_MEM32 ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_get_rate (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct clk* devm_clk_get (TYPE_1__*,int *) ;
 int devm_ioremap (TYPE_1__*,int ,int ) ;
 int** mlb_usio_irq ;
 int mlb_usio_ops ;
 struct uart_port* mlb_usio_ports ;
 int mlb_usio_uart_driver ;
 int of_property_read_u32 (int ,char*,int*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 int uart_add_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int mlb_usio_probe(struct platform_device *pdev)
{
 struct clk *clk = devm_clk_get(&pdev->dev, ((void*)0));
 struct uart_port *port;
 struct resource *res;
 int index = 0;
 int ret;

 if (IS_ERR(clk)) {
  dev_err(&pdev->dev, "Missing clock\n");
  return PTR_ERR(clk);
 }
 ret = clk_prepare_enable(clk);
 if (ret) {
  dev_err(&pdev->dev, "Clock enable failed: %d\n", ret);
  return ret;
 }
 of_property_read_u32(pdev->dev.of_node, "index", &index);
 port = &mlb_usio_ports[index];

 port->private_data = (void *)clk;
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res == ((void*)0)) {
  dev_err(&pdev->dev, "Missing regs\n");
  ret = -ENODEV;
  goto failed;
 }
 port->membase = devm_ioremap(&pdev->dev, res->start,
    resource_size(res));

 ret = platform_get_irq_byname(pdev, "rx");
 mlb_usio_irq[index][RX] = ret;

 ret = platform_get_irq_byname(pdev, "tx");
 mlb_usio_irq[index][TX] = ret;

 port->irq = mlb_usio_irq[index][RX];
 port->uartclk = clk_get_rate(clk);
 port->fifosize = 128;
 port->iotype = UPIO_MEM32;
 port->flags = UPF_BOOT_AUTOCONF | UPF_SPD_VHI;
 port->line = index;
 port->ops = &mlb_usio_ops;
 port->dev = &pdev->dev;

 ret = uart_add_one_port(&mlb_usio_uart_driver, port);
 if (ret) {
  dev_err(&pdev->dev, "Adding port failed: %d\n", ret);
  goto failed;
 }
 return 0;

failed:
 clk_disable_unprepare(clk);

 return ret;
}
