
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int lock; scalar_t__ membase; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct circ_buf xmit; } ;


 scalar_t__ BDRL ;
 int IRQ_HANDLED ;
 unsigned long LINFLEXD_UARTSR_DTFTFF ;
 scalar_t__ UARTSR ;
 scalar_t__ WAKEUP_CHARS ;
 int linflex_stop_tx (struct uart_port*) ;
 int linflex_transmit_buffer (struct uart_port*) ;
 unsigned long readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;
 int writeb (scalar_t__,scalar_t__) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static irqreturn_t linflex_txint(int irq, void *dev_id)
{
 struct uart_port *sport = dev_id;
 struct circ_buf *xmit = &sport->state->xmit;
 unsigned long flags;
 unsigned long status;

 spin_lock_irqsave(&sport->lock, flags);

 if (sport->x_char) {
  writeb(sport->x_char, sport->membase + BDRL);


  while (((status = readl(sport->membase + UARTSR)) &
   LINFLEXD_UARTSR_DTFTFF) != LINFLEXD_UARTSR_DTFTFF)
   ;

  writel(status | LINFLEXD_UARTSR_DTFTFF,
         sport->membase + UARTSR);

  goto out;
 }

 if (uart_circ_empty(xmit) || uart_tx_stopped(sport)) {
  linflex_stop_tx(sport);
  goto out;
 }

 linflex_transmit_buffer(sport);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(sport);

out:
 spin_unlock_irqrestore(&sport->lock, flags);
 return IRQ_HANDLED;
}
