
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_9__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_7__ {int regshift; int fifosize; int flags; int irq; int line; int uartclk; int membase; int iotype; int type; TYPE_3__* dev; int lock; } ;
struct TYPE_8__ {int capabilities; TYPE_1__ port; } ;
struct bcm2835aux_data {int line; int clk; TYPE_2__ uart; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int PORT_16550 ;
 int PTR_ERR_OR_ZERO (int ) ;
 int UART_CAP_FIFO ;
 int UART_CAP_MINI ;
 int UPF_FIXED_PORT ;
 int UPF_FIXED_TYPE ;
 int UPF_SHARE_IRQ ;
 int UPF_SKIP_TEST ;
 int UPIO_MEM ;
 int clk_disable_unprepare (int ) ;
 int clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_3__*,char*,...) ;
 int devm_clk_get (TYPE_3__*,int *) ;
 int devm_ioremap_resource (TYPE_3__*,struct resource*) ;
 struct bcm2835aux_data* devm_kzalloc (TYPE_3__*,int,int ) ;
 int of_alias_get_id (int ,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct bcm2835aux_data*) ;
 int serial8250_register_8250_port (TYPE_2__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int bcm2835aux_serial_probe(struct platform_device *pdev)
{
 struct bcm2835aux_data *data;
 struct resource *res;
 int ret;


 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;


 spin_lock_init(&data->uart.port.lock);
 data->uart.capabilities = UART_CAP_FIFO | UART_CAP_MINI;
 data->uart.port.dev = &pdev->dev;
 data->uart.port.regshift = 2;
 data->uart.port.type = PORT_16550;
 data->uart.port.iotype = UPIO_MEM;
 data->uart.port.fifosize = 8;
 data->uart.port.flags = UPF_SHARE_IRQ |
    UPF_FIXED_PORT |
    UPF_FIXED_TYPE |
    UPF_SKIP_TEST;


 data->clk = devm_clk_get(&pdev->dev, ((void*)0));
 ret = PTR_ERR_OR_ZERO(data->clk);
 if (ret) {
  dev_err(&pdev->dev, "could not get clk: %d\n", ret);
  return ret;
 }


 ret = platform_get_irq(pdev, 0);
 if (ret < 0)
  return ret;
 data->uart.port.irq = ret;


 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  dev_err(&pdev->dev, "memory resource not found");
  return -EINVAL;
 }
 data->uart.port.membase = devm_ioremap_resource(&pdev->dev, res);
 ret = PTR_ERR_OR_ZERO(data->uart.port.membase);
 if (ret)
  return ret;


 ret = of_alias_get_id(pdev->dev.of_node, "serial");
 if (ret >= 0)
  data->uart.port.line = ret;


 ret = clk_prepare_enable(data->clk);
 if (ret) {
  dev_err(&pdev->dev, "unable to enable uart clock - %d\n",
   ret);
  return ret;
 }






 data->uart.port.uartclk = clk_get_rate(data->clk) * 2;


 ret = serial8250_register_8250_port(&data->uart);
 if (ret < 0) {
  dev_err(&pdev->dev, "unable to register 8250 port - %d\n",
   ret);
  goto dis_clk;
 }
 data->line = ret;

 platform_set_drvdata(pdev, data);

 return 0;

dis_clk:
 clk_disable_unprepare(data->clk);
 return ret;
}
