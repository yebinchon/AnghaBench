
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int line; } ;
struct dw8250_data {int clk; int pclk; int rst; TYPE_1__ data; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 struct dw8250_data* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int reset_control_assert (int ) ;
 int serial8250_unregister_port (int ) ;

__attribute__((used)) static int dw8250_remove(struct platform_device *pdev)
{
 struct dw8250_data *data = platform_get_drvdata(pdev);
 struct device *dev = &pdev->dev;

 pm_runtime_get_sync(dev);

 serial8250_unregister_port(data->data.line);

 reset_control_assert(data->rst);

 if (!IS_ERR(data->pclk))
  clk_disable_unprepare(data->pclk);

 if (!IS_ERR(data->clk))
  clk_disable_unprepare(data->clk);

 pm_runtime_disable(dev);
 pm_runtime_put_noidle(dev);

 return 0;
}
