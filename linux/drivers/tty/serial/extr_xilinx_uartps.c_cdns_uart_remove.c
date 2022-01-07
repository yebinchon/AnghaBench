
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ mapbase; struct cdns_uart* private_data; } ;
struct platform_device {int dev; } ;
struct cdns_uart {scalar_t__ id; int cdns_uart_driver; int pclk; int uartclk; int clk_rate_change_nb; } ;


 scalar_t__ MAX_UART_INSTANCES ;
 int bitmap ;
 scalar_t__ bitmap_empty (int ,scalar_t__) ;
 int bitmap_lock ;
 int clear_bit (scalar_t__,int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_notifier_unregister (int ,int *) ;
 struct uart_port* console_port ;
 int device_init_wakeup (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct uart_port* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_dont_use_autosuspend (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int uart_remove_one_port (int ,struct uart_port*) ;
 int uart_unregister_driver (int ) ;
 scalar_t__ uartps_major ;

__attribute__((used)) static int cdns_uart_remove(struct platform_device *pdev)
{
 struct uart_port *port = platform_get_drvdata(pdev);
 struct cdns_uart *cdns_uart_data = port->private_data;
 int rc;






 rc = uart_remove_one_port(cdns_uart_data->cdns_uart_driver, port);
 port->mapbase = 0;
 mutex_lock(&bitmap_lock);
 if (cdns_uart_data->id < MAX_UART_INSTANCES)
  clear_bit(cdns_uart_data->id, bitmap);
 mutex_unlock(&bitmap_lock);
 clk_disable_unprepare(cdns_uart_data->uartclk);
 clk_disable_unprepare(cdns_uart_data->pclk);
 pm_runtime_disable(&pdev->dev);
 pm_runtime_set_suspended(&pdev->dev);
 pm_runtime_dont_use_autosuspend(&pdev->dev);
 device_init_wakeup(&pdev->dev, 0);







 mutex_lock(&bitmap_lock);
 if (bitmap_empty(bitmap, MAX_UART_INSTANCES))
  uartps_major = 0;
 mutex_unlock(&bitmap_lock);

 uart_unregister_driver(cdns_uart_data->cdns_uart_driver);
 return rc;
}
