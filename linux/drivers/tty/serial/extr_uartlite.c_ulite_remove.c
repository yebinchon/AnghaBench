
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uartlite_data {int clk; } ;
struct uart_port {struct uartlite_data* private_data; } ;
struct platform_device {int dev; } ;


 int clk_unprepare (int ) ;
 struct uart_port* dev_get_drvdata (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_dont_use_autosuspend (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int ulite_release (int *) ;

__attribute__((used)) static int ulite_remove(struct platform_device *pdev)
{
 struct uart_port *port = dev_get_drvdata(&pdev->dev);
 struct uartlite_data *pdata = port->private_data;
 int rc;

 clk_unprepare(pdata->clk);
 rc = ulite_release(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 pm_runtime_set_suspended(&pdev->dev);
 pm_runtime_dont_use_autosuspend(&pdev->dev);
 return rc;
}
