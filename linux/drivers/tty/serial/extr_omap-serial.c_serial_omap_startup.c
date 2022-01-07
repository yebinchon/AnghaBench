
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; int mctrl; int line; int dev; int irq; int irqflags; } ;
struct uart_omap_port {int ier; int wer; int features; int port_activity; int dev; scalar_t__ msr_saved_flags; TYPE_1__ port; scalar_t__ wakeirq; int name; } ;


 int OMAP_UART_TX_WAKEUP_EN ;
 int OMAP_UART_WER_HAS_TX_WAKEUP ;
 int OMAP_UART_WER_MOD_WKUP ;
 int TIOCM_OUT2 ;
 int UART_IER ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int UART_IIR ;
 int UART_LCR ;
 int UART_LCR_WLEN8 ;
 int UART_LSR ;
 int UART_LSR_DR ;
 int UART_MSR ;
 int UART_OMAP_WER ;
 int UART_RX ;
 int dev_dbg (int ,char*,int ) ;
 int dev_pm_set_dedicated_wake_irq (int ,scalar_t__) ;
 int free_irq (int ,struct uart_omap_port*) ;
 int jiffies ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int request_irq (int ,int ,int ,int ,struct uart_omap_port*) ;
 int serial_in (struct uart_omap_port*,int ) ;
 int serial_omap_clear_fifos (struct uart_omap_port*) ;
 int serial_omap_irq ;
 int serial_omap_set_mctrl (TYPE_1__*,int ) ;
 int serial_out (struct uart_omap_port*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct uart_omap_port* to_uart_omap_port (struct uart_port*) ;

__attribute__((used)) static int serial_omap_startup(struct uart_port *port)
{
 struct uart_omap_port *up = to_uart_omap_port(port);
 unsigned long flags = 0;
 int retval;




 retval = request_irq(up->port.irq, serial_omap_irq, up->port.irqflags,
    up->name, up);
 if (retval)
  return retval;


 if (up->wakeirq) {
  retval = dev_pm_set_dedicated_wake_irq(up->dev, up->wakeirq);
  if (retval) {
   free_irq(up->port.irq, up);
   return retval;
  }
 }

 dev_dbg(up->port.dev, "serial_omap_startup+%d\n", up->port.line);

 pm_runtime_get_sync(up->dev);




 serial_omap_clear_fifos(up);




 (void) serial_in(up, UART_LSR);
 if (serial_in(up, UART_LSR) & UART_LSR_DR)
  (void) serial_in(up, UART_RX);
 (void) serial_in(up, UART_IIR);
 (void) serial_in(up, UART_MSR);




 serial_out(up, UART_LCR, UART_LCR_WLEN8);
 spin_lock_irqsave(&up->port.lock, flags);



 up->port.mctrl |= TIOCM_OUT2;
 serial_omap_set_mctrl(&up->port, up->port.mctrl);
 spin_unlock_irqrestore(&up->port.lock, flags);

 up->msr_saved_flags = 0;





 up->ier = UART_IER_RLSI | UART_IER_RDI;
 serial_out(up, UART_IER, up->ier);


 up->wer = OMAP_UART_WER_MOD_WKUP;
 if (up->features & OMAP_UART_WER_HAS_TX_WAKEUP)
  up->wer |= OMAP_UART_TX_WAKEUP_EN;

 serial_out(up, UART_OMAP_WER, up->wer);

 pm_runtime_mark_last_busy(up->dev);
 pm_runtime_put_autosuspend(up->dev);
 up->port_activity = jiffies;
 return 0;
}
