
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dev; } ;


 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync_suspend (int ) ;
 int serial8250_do_pm (struct uart_port*,unsigned int,unsigned int) ;

__attribute__((used)) static void
dw8250_do_pm(struct uart_port *port, unsigned int state, unsigned int old)
{
 if (!state)
  pm_runtime_get_sync(port->dev);

 serial8250_do_pm(port, state, old);

 if (state)
  pm_runtime_put_sync_suspend(port->dev);
}
