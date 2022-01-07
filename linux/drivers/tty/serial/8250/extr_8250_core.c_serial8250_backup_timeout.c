
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; scalar_t__ irq; scalar_t__ x_char; TYPE_1__* state; } ;
struct uart_8250_port {unsigned int lsr_saved_flags; int ier; TYPE_2__ port; int timer; } ;
struct timer_list {int dummy; } ;
struct TYPE_3__ {int xmit; } ;


 int HZ ;
 unsigned int LSR_SAVE_FLAGS ;
 int UART_IER ;
 int UART_IER_THRI ;
 int UART_IIR ;
 unsigned int UART_IIR_ID ;
 unsigned int UART_IIR_NO_INT ;
 unsigned int UART_IIR_THRI ;
 int UART_LSR ;
 unsigned int UART_LSR_THRE ;
 struct uart_8250_port* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int serial8250_tx_chars (struct uart_8250_port*) ;
 unsigned int serial_in (struct uart_8250_port*,int ) ;
 int serial_out (struct uart_8250_port*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;
 int uart_circ_empty (int *) ;
 scalar_t__ uart_poll_timeout (TYPE_2__*) ;
 struct uart_8250_port* up ;

__attribute__((used)) static void serial8250_backup_timeout(struct timer_list *t)
{
 struct uart_8250_port *up = from_timer(up, t, timer);
 unsigned int iir, ier = 0, lsr;
 unsigned long flags;

 spin_lock_irqsave(&up->port.lock, flags);





 if (up->port.irq) {
  ier = serial_in(up, UART_IER);
  serial_out(up, UART_IER, 0);
 }

 iir = serial_in(up, UART_IIR);







 lsr = serial_in(up, UART_LSR);
 up->lsr_saved_flags |= lsr & LSR_SAVE_FLAGS;
 if ((iir & UART_IIR_NO_INT) && (up->ier & UART_IER_THRI) &&
     (!uart_circ_empty(&up->port.state->xmit) || up->port.x_char) &&
     (lsr & UART_LSR_THRE)) {
  iir &= ~(UART_IIR_ID | UART_IIR_NO_INT);
  iir |= UART_IIR_THRI;
 }

 if (!(iir & UART_IIR_NO_INT))
  serial8250_tx_chars(up);

 if (up->port.irq)
  serial_out(up, UART_IER, ier);

 spin_unlock_irqrestore(&up->port.lock, flags);


 mod_timer(&up->timer,
  jiffies + uart_poll_timeout(&up->port) + HZ / 5);
}
