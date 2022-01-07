
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_omap_port {int pm_qos_request; int dev; int port; } ;
struct platform_device {int dev; } ;


 int device_init_wakeup (int *,int) ;
 struct uart_omap_port* platform_get_drvdata (struct platform_device*) ;
 int pm_qos_remove_request (int *) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_dont_use_autosuspend (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int serial_omap_reg ;
 int uart_remove_one_port (int *,int *) ;

__attribute__((used)) static int serial_omap_remove(struct platform_device *dev)
{
 struct uart_omap_port *up = platform_get_drvdata(dev);

 pm_runtime_get_sync(up->dev);

 uart_remove_one_port(&serial_omap_reg, &up->port);

 pm_runtime_dont_use_autosuspend(up->dev);
 pm_runtime_put_sync(up->dev);
 pm_runtime_disable(up->dev);
 pm_qos_remove_request(&up->pm_qos_request);
 device_init_wakeup(&dev->dev, 0);

 return 0;
}
