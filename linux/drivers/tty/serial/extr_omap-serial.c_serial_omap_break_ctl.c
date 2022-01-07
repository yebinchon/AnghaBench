
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; int line; int dev; } ;
struct uart_omap_port {int dev; TYPE_1__ port; int lcr; } ;


 int UART_LCR ;
 int UART_LCR_SBC ;
 int dev_dbg (int ,char*,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int serial_out (struct uart_omap_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_omap_port* to_uart_omap_port (struct uart_port*) ;

__attribute__((used)) static void serial_omap_break_ctl(struct uart_port *port, int break_state)
{
 struct uart_omap_port *up = to_uart_omap_port(port);
 unsigned long flags = 0;

 dev_dbg(up->port.dev, "serial_omap_break_ctl+%d\n", up->port.line);
 pm_runtime_get_sync(up->dev);
 spin_lock_irqsave(&up->port.lock, flags);
 if (break_state == -1)
  up->lcr |= UART_LCR_SBC;
 else
  up->lcr &= ~UART_LCR_SBC;
 serial_out(up, UART_LCR, up->lcr);
 spin_unlock_irqrestore(&up->port.lock, flags);
 pm_runtime_mark_last_busy(up->dev);
 pm_runtime_put_autosuspend(up->dev);
}
