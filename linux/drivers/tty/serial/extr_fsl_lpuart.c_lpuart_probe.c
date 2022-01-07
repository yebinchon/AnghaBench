
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_17__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {struct lpuart_soc_data* data; } ;
struct lpuart_soc_data {int iotype; int devtype; scalar_t__ reg_off; } ;
struct TYPE_18__ {int flags; scalar_t__ delay_rts_after_send; scalar_t__ delay_rts_before_send; } ;
struct TYPE_20__ {int line; int irq; TYPE_1__* dev; TYPE_2__ rs485; int uartclk; int (* rs485_config ) (TYPE_4__*,TYPE_2__*) ;int flags; int * ops; int iotype; int type; int mapbase; int * membase; } ;
struct lpuart_port {TYPE_4__ port; void* dma_rx_chan; void* dma_tx_chan; int * baud_clk; int * ipg_clk; int devtype; } ;
struct device_node {int dummy; } ;
struct TYPE_19__ {int cons; } ;


 int ARRAY_SIZE (struct lpuart_port**) ;
 int DRIVER_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int LPUART32_CONSOLE ;
 int LPUART_CONSOLE ;
 int PORT_LPUART ;
 int PTR_ERR (int *) ;
 int SER_RS485_RX_DURING_TX ;
 int UART_NR ;
 int UPF_BOOT_AUTOCONF ;
 int dev_err (TYPE_1__*,char*,...) ;
 int dev_info (TYPE_1__*,char*) ;
 void* devm_clk_get (TYPE_1__*,char*) ;
 int * devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct lpuart_port* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_irq (TYPE_1__*,int,int ,int ,int ,struct lpuart_port*) ;
 void* dma_request_slave_channel (TYPE_1__*,char*) ;
 int fsl_lpuart_ida ;
 int ida_simple_get (int *,int ,int ,int ) ;
 scalar_t__ is_imx8qxp_lpuart (struct lpuart_port*) ;
 int lpuart32_int ;
 int lpuart32_pops ;
 int lpuart_config_rs485 (TYPE_4__*,TYPE_2__*) ;
 int lpuart_disable_clks (struct lpuart_port*) ;
 int lpuart_dt_ids ;
 int lpuart_enable_clks (struct lpuart_port*) ;
 int lpuart_get_baud_clk_rate (struct lpuart_port*) ;
 int lpuart_int ;
 scalar_t__ lpuart_is_32 (struct lpuart_port*) ;
 int lpuart_pops ;
 struct lpuart_port** lpuart_ports ;
 TYPE_3__ lpuart_reg ;
 int of_alias_get_id (struct device_node*,char*) ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,TYPE_4__*) ;
 int uart_add_one_port (TYPE_3__*,TYPE_4__*) ;
 int uart_get_rs485_mode (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int lpuart_probe(struct platform_device *pdev)
{
 const struct of_device_id *of_id = of_match_device(lpuart_dt_ids,
          &pdev->dev);
 const struct lpuart_soc_data *sdata = of_id->data;
 struct device_node *np = pdev->dev.of_node;
 struct lpuart_port *sport;
 struct resource *res;
 int ret;

 sport = devm_kzalloc(&pdev->dev, sizeof(*sport), GFP_KERNEL);
 if (!sport)
  return -ENOMEM;

 ret = of_alias_get_id(np, "serial");
 if (ret < 0) {
  ret = ida_simple_get(&fsl_lpuart_ida, 0, UART_NR, GFP_KERNEL);
  if (ret < 0) {
   dev_err(&pdev->dev, "port line is full, add device failed\n");
   return ret;
  }
 }
 if (ret >= ARRAY_SIZE(lpuart_ports)) {
  dev_err(&pdev->dev, "serial%d out of range\n", ret);
  return -EINVAL;
 }
 sport->port.line = ret;
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 sport->port.membase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(sport->port.membase))
  return PTR_ERR(sport->port.membase);

 sport->port.membase += sdata->reg_off;
 sport->port.mapbase = res->start;
 sport->port.dev = &pdev->dev;
 sport->port.type = PORT_LPUART;
 sport->devtype = sdata->devtype;
 ret = platform_get_irq(pdev, 0);
 if (ret < 0)
  return ret;
 sport->port.irq = ret;
 sport->port.iotype = sdata->iotype;
 if (lpuart_is_32(sport))
  sport->port.ops = &lpuart32_pops;
 else
  sport->port.ops = &lpuart_pops;
 sport->port.flags = UPF_BOOT_AUTOCONF;

 sport->port.rs485_config = lpuart_config_rs485;

 sport->ipg_clk = devm_clk_get(&pdev->dev, "ipg");
 if (IS_ERR(sport->ipg_clk)) {
  ret = PTR_ERR(sport->ipg_clk);
  dev_err(&pdev->dev, "failed to get uart ipg clk: %d\n", ret);
  return ret;
 }

 sport->baud_clk = ((void*)0);
 if (is_imx8qxp_lpuart(sport)) {
  sport->baud_clk = devm_clk_get(&pdev->dev, "baud");
  if (IS_ERR(sport->baud_clk)) {
   ret = PTR_ERR(sport->baud_clk);
   dev_err(&pdev->dev, "failed to get uart baud clk: %d\n", ret);
   return ret;
  }
 }

 ret = lpuart_enable_clks(sport);
 if (ret)
  return ret;
 sport->port.uartclk = lpuart_get_baud_clk_rate(sport);

 lpuart_ports[sport->port.line] = sport;

 platform_set_drvdata(pdev, &sport->port);

 if (lpuart_is_32(sport)) {
  lpuart_reg.cons = LPUART32_CONSOLE;
  ret = devm_request_irq(&pdev->dev, sport->port.irq, lpuart32_int, 0,
     DRIVER_NAME, sport);
 } else {
  lpuart_reg.cons = LPUART_CONSOLE;
  ret = devm_request_irq(&pdev->dev, sport->port.irq, lpuart_int, 0,
     DRIVER_NAME, sport);
 }

 if (ret)
  goto failed_irq_request;

 ret = uart_add_one_port(&lpuart_reg, &sport->port);
 if (ret)
  goto failed_attach_port;

 uart_get_rs485_mode(&pdev->dev, &sport->port.rs485);

 if (sport->port.rs485.flags & SER_RS485_RX_DURING_TX)
  dev_err(&pdev->dev, "driver doesn't support RX during TX\n");

 if (sport->port.rs485.delay_rts_before_send ||
     sport->port.rs485.delay_rts_after_send)
  dev_err(&pdev->dev, "driver doesn't support RTS delays\n");

 lpuart_config_rs485(&sport->port, &sport->port.rs485);

 sport->dma_tx_chan = dma_request_slave_channel(sport->port.dev, "tx");
 if (!sport->dma_tx_chan)
  dev_info(sport->port.dev, "DMA tx channel request failed, "
    "operating without tx DMA\n");

 sport->dma_rx_chan = dma_request_slave_channel(sport->port.dev, "rx");
 if (!sport->dma_rx_chan)
  dev_info(sport->port.dev, "DMA rx channel request failed, "
    "operating without rx DMA\n");

 return 0;

failed_attach_port:
failed_irq_request:
 lpuart_disable_clks(sport);
 return ret;
}
