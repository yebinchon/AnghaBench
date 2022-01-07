
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int irq; int lock; int mctrl; int line; int dev; } ;
struct uart_omap_port {int dev; TYPE_1__ port; scalar_t__ ier; } ;


 int TIOCM_OUT2 ;
 int UART_IER ;
 int UART_LCR ;
 int UART_LCR_SBC ;
 int UART_LSR ;
 int UART_LSR_DR ;
 int UART_RX ;
 int dev_dbg (int ,char*,int ) ;
 int dev_pm_clear_wake_irq (int ) ;
 int free_irq (int ,struct uart_omap_port*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int serial_in (struct uart_omap_port*,int ) ;
 int serial_omap_clear_fifos (struct uart_omap_port*) ;
 int serial_omap_set_mctrl (TYPE_1__*,int ) ;
 int serial_out (struct uart_omap_port*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_omap_port* to_uart_omap_port (struct uart_port*) ;

__attribute__((used)) static void serial_omap_shutdown(struct uart_port *port)
{
 struct uart_omap_port *up = to_uart_omap_port(port);
 unsigned long flags = 0;

 dev_dbg(up->port.dev, "serial_omap_shutdown+%d\n", up->port.line);

 pm_runtime_get_sync(up->dev);



 up->ier = 0;
 serial_out(up, UART_IER, 0);

 spin_lock_irqsave(&up->port.lock, flags);
 up->port.mctrl &= ~TIOCM_OUT2;
 serial_omap_set_mctrl(&up->port, up->port.mctrl);
 spin_unlock_irqrestore(&up->port.lock, flags);




 serial_out(up, UART_LCR, serial_in(up, UART_LCR) & ~UART_LCR_SBC);
 serial_omap_clear_fifos(up);




 if (serial_in(up, UART_LSR) & UART_LSR_DR)
  (void) serial_in(up, UART_RX);

 pm_runtime_mark_last_busy(up->dev);
 pm_runtime_put_autosuspend(up->dev);
 free_irq(up->port.irq, up);
 dev_pm_clear_wake_irq(up->dev);
}
