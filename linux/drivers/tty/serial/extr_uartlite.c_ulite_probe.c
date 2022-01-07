
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct uartlite_data {int * clk; TYPE_1__* ulite_uart_driver; } ;
struct resource {int start; } ;
struct TYPE_15__ {int of_node; } ;
struct platform_device {int id; TYPE_2__ dev; } ;
typedef int __be32 ;
struct TYPE_14__ {int state; } ;


 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int UART_AUTOSUSPEND_TIMEOUT ;
 int be32_to_cpup (int const*) ;
 int clk_prepare_enable (int *) ;
 int dev_dbg (TYPE_2__*,char*) ;
 int dev_err (TYPE_2__*,char*) ;
 int * devm_clk_get (TYPE_2__*,char*) ;
 struct uartlite_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 int of_alias_get_id (int ,char*) ;
 int * of_get_property (int ,char*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_mark_last_busy (TYPE_2__*) ;
 int pm_runtime_put_autosuspend (TYPE_2__*) ;
 int pm_runtime_set_active (TYPE_2__*) ;
 int pm_runtime_set_autosuspend_delay (TYPE_2__*,int ) ;
 int pm_runtime_use_autosuspend (TYPE_2__*) ;
 int uart_register_driver (TYPE_1__*) ;
 int ulite_assign (TYPE_2__*,int,int ,int,struct uartlite_data*) ;
 TYPE_1__ ulite_uart_driver ;

__attribute__((used)) static int ulite_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct uartlite_data *pdata;
 int irq, ret;
 int id = pdev->id;







 if (id < 0) {

  id = of_alias_get_id(pdev->dev.of_node, "serial");
  if (id < 0)
   id = 0;
 }

 if (!ulite_uart_driver.state) {
  dev_dbg(&pdev->dev, "uartlite: calling uart_register_driver()\n");
  ret = uart_register_driver(&ulite_uart_driver);
  if (ret < 0) {
   dev_err(&pdev->dev, "Failed to register driver\n");
   return ret;
  }
 }

 pdata = devm_kzalloc(&pdev->dev, sizeof(struct uartlite_data),
        GFP_KERNEL);
 if (!pdata)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res)
  return -ENODEV;

 irq = platform_get_irq(pdev, 0);
 if (irq <= 0)
  return -ENXIO;

 pdata->clk = devm_clk_get(&pdev->dev, "s_axi_aclk");
 if (IS_ERR(pdata->clk)) {
  if (PTR_ERR(pdata->clk) != -ENOENT)
   return PTR_ERR(pdata->clk);





  pdata->clk = ((void*)0);
 }

 pdata->ulite_uart_driver = &ulite_uart_driver;
 ret = clk_prepare_enable(pdata->clk);
 if (ret) {
  dev_err(&pdev->dev, "Failed to prepare clock\n");
  return ret;
 }

 pm_runtime_use_autosuspend(&pdev->dev);
 pm_runtime_set_autosuspend_delay(&pdev->dev, UART_AUTOSUSPEND_TIMEOUT);
 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);

 ret = ulite_assign(&pdev->dev, id, res->start, irq, pdata);

 pm_runtime_mark_last_busy(&pdev->dev);
 pm_runtime_put_autosuspend(&pdev->dev);

 return ret;
}
