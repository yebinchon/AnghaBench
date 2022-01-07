
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct uart_port {int line; int irq; int mapbase; int membase; int flags; int * ops; int fifosize; int uartclk; int iotype; int type; int * dev; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct TYPE_5__ {struct uart_port port; } ;


 int ARRAY_SIZE (TYPE_1__**) ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PORT_SPRD ;
 int PTR_ERR (int ) ;
 int SPRD_DEF_RATE ;
 int SPRD_FIFO_SIZE ;
 int UPF_BOOT_AUTOCONF ;
 int UPIO_MEM ;
 int devm_ioremap_resource (int *,struct resource*) ;
 TYPE_1__* devm_kzalloc (int *,int,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct uart_port*) ;
 int pr_err (char*) ;
 int serial_sprd_ops ;
 int sprd_clk_init (struct uart_port*) ;
 TYPE_1__** sprd_port ;
 int sprd_ports_num ;
 int sprd_probe_dt_alias (int,int *) ;
 int sprd_remove (struct platform_device*) ;
 int sprd_rx_alloc_buf (TYPE_1__*) ;
 int sprd_uart_driver ;
 int uart_add_one_port (int *,struct uart_port*) ;
 int uart_register_driver (int *) ;

__attribute__((used)) static int sprd_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct uart_port *up;
 int irq;
 int index;
 int ret;

 for (index = 0; index < ARRAY_SIZE(sprd_port); index++)
  if (sprd_port[index] == ((void*)0))
   break;

 if (index == ARRAY_SIZE(sprd_port))
  return -EBUSY;

 index = sprd_probe_dt_alias(index, &pdev->dev);

 sprd_port[index] = devm_kzalloc(&pdev->dev, sizeof(*sprd_port[index]),
     GFP_KERNEL);
 if (!sprd_port[index])
  return -ENOMEM;

 up = &sprd_port[index]->port;
 up->dev = &pdev->dev;
 up->line = index;
 up->type = PORT_SPRD;
 up->iotype = UPIO_MEM;
 up->uartclk = SPRD_DEF_RATE;
 up->fifosize = SPRD_FIFO_SIZE;
 up->ops = &serial_sprd_ops;
 up->flags = UPF_BOOT_AUTOCONF;

 ret = sprd_clk_init(up);
 if (ret)
  return ret;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 up->membase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(up->membase))
  return PTR_ERR(up->membase);

 up->mapbase = res->start;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;
 up->irq = irq;





 ret = sprd_rx_alloc_buf(sprd_port[index]);
 if (ret)
  return ret;

 if (!sprd_ports_num) {
  ret = uart_register_driver(&sprd_uart_driver);
  if (ret < 0) {
   pr_err("Failed to register SPRD-UART driver\n");
   return ret;
  }
 }
 sprd_ports_num++;

 ret = uart_add_one_port(&sprd_uart_driver, up);
 if (ret) {
  sprd_port[index] = ((void*)0);
  sprd_remove(pdev);
 }

 platform_set_drvdata(pdev, up);

 return ret;
}
