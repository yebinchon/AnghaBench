
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int fifosize; int irq; int regshift; int iotype; int membase; int mapbase; int type; int * ops; int * dev; } ;
struct tegra_uart_port {int rst; int uart_clk; struct tegra_uart_chip_data const* cdata; struct uart_port uport; } ;
struct tegra_uart_chip_data {int dummy; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;
struct of_device_id {struct tegra_uart_chip_data* data; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PORT_TEGRA ;
 int PTR_ERR (int ) ;
 int UPIO_MEM32 ;
 int dev_err (int *,char*,...) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct tegra_uart_port* devm_kzalloc (int *,int,int ) ;
 int devm_reset_control_get_exclusive (int *,char*) ;
 struct of_device_id* of_match_device (int ,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_uart_port*) ;
 int tegra_uart_driver ;
 int tegra_uart_of_match ;
 int tegra_uart_ops ;
 int tegra_uart_parse_dt (struct platform_device*,struct tegra_uart_port*) ;
 int uart_add_one_port (int *,struct uart_port*) ;

__attribute__((used)) static int tegra_uart_probe(struct platform_device *pdev)
{
 struct tegra_uart_port *tup;
 struct uart_port *u;
 struct resource *resource;
 int ret;
 const struct tegra_uart_chip_data *cdata;
 const struct of_device_id *match;

 match = of_match_device(tegra_uart_of_match, &pdev->dev);
 if (!match) {
  dev_err(&pdev->dev, "Error: No device match found\n");
  return -ENODEV;
 }
 cdata = match->data;

 tup = devm_kzalloc(&pdev->dev, sizeof(*tup), GFP_KERNEL);
 if (!tup) {
  dev_err(&pdev->dev, "Failed to allocate memory for tup\n");
  return -ENOMEM;
 }

 ret = tegra_uart_parse_dt(pdev, tup);
 if (ret < 0)
  return ret;

 u = &tup->uport;
 u->dev = &pdev->dev;
 u->ops = &tegra_uart_ops;
 u->type = PORT_TEGRA;
 u->fifosize = 32;
 tup->cdata = cdata;

 platform_set_drvdata(pdev, tup);
 resource = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!resource) {
  dev_err(&pdev->dev, "No IO memory resource\n");
  return -ENODEV;
 }

 u->mapbase = resource->start;
 u->membase = devm_ioremap_resource(&pdev->dev, resource);
 if (IS_ERR(u->membase))
  return PTR_ERR(u->membase);

 tup->uart_clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(tup->uart_clk)) {
  dev_err(&pdev->dev, "Couldn't get the clock\n");
  return PTR_ERR(tup->uart_clk);
 }

 tup->rst = devm_reset_control_get_exclusive(&pdev->dev, "serial");
 if (IS_ERR(tup->rst)) {
  dev_err(&pdev->dev, "Couldn't get the reset\n");
  return PTR_ERR(tup->rst);
 }

 u->iotype = UPIO_MEM32;
 ret = platform_get_irq(pdev, 0);
 if (ret < 0)
  return ret;
 u->irq = ret;
 u->regshift = 2;
 ret = uart_add_one_port(&tegra_uart_driver, u);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to add uart port, err %d\n", ret);
  return ret;
 }
 return ret;
}
