
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; int line; int dev; } ;
struct uart_omap_port {int dev; TYPE_1__ port; } ;


 unsigned int TIOCSER_TEMT ;
 int UART_LSR ;
 int UART_LSR_TEMT ;
 int dev_dbg (int ,char*,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int serial_in (struct uart_omap_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_omap_port* to_uart_omap_port (struct uart_port*) ;

__attribute__((used)) static unsigned int serial_omap_tx_empty(struct uart_port *port)
{
 struct uart_omap_port *up = to_uart_omap_port(port);
 unsigned long flags = 0;
 unsigned int ret = 0;

 pm_runtime_get_sync(up->dev);
 dev_dbg(up->port.dev, "serial_omap_tx_empty+%d\n", up->port.line);
 spin_lock_irqsave(&up->port.lock, flags);
 ret = serial_in(up, UART_LSR) & UART_LSR_TEMT ? TIOCSER_TEMT : 0;
 spin_unlock_irqrestore(&up->port.lock, flags);
 pm_runtime_mark_last_busy(up->dev);
 pm_runtime_put_autosuspend(up->dev);
 return ret;
}
