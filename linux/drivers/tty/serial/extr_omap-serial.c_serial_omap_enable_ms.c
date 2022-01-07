
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int line; int dev; } ;
struct uart_omap_port {int dev; int ier; TYPE_1__ port; } ;


 int UART_IER ;
 int UART_IER_MSI ;
 int dev_dbg (int ,char*,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int serial_out (struct uart_omap_port*,int ,int ) ;
 struct uart_omap_port* to_uart_omap_port (struct uart_port*) ;

__attribute__((used)) static void serial_omap_enable_ms(struct uart_port *port)
{
 struct uart_omap_port *up = to_uart_omap_port(port);

 dev_dbg(up->port.dev, "serial_omap_enable_ms+%d\n", up->port.line);

 pm_runtime_get_sync(up->dev);
 up->ier |= UART_IER_MSI;
 serial_out(up, UART_IER, up->ier);
 pm_runtime_mark_last_busy(up->dev);
 pm_runtime_put_autosuspend(up->dev);
}
