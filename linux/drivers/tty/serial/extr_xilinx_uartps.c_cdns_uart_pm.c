
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;



 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static void cdns_uart_pm(struct uart_port *port, unsigned int state,
     unsigned int oldstate)
{
 switch (state) {
 case 128:
  pm_runtime_mark_last_busy(port->dev);
  pm_runtime_put_autosuspend(port->dev);
  break;
 default:
  pm_runtime_get_sync(port->dev);
  break;
 }
}
