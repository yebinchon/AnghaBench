
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int overrun; int frame; int parity; int rx; } ;
struct uart_port {unsigned int read_status_mask; TYPE_2__* state; TYPE_1__ icount; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int port; } ;


 unsigned int* CSR_RXSTAT ;
 unsigned int* CSR_UARTDR ;
 unsigned int* CSR_UARTFLG ;
 int IRQ_HANDLED ;
 unsigned int RXSTAT_ANYERR ;
 unsigned int RXSTAT_DUMMY_READ ;
 unsigned int RXSTAT_FRAME ;
 unsigned int RXSTAT_OVERRUN ;
 unsigned int RXSTAT_PARITY ;
 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_PARITY ;
 int tty_flip_buffer_push (int *) ;
 int uart_insert_char (struct uart_port*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static irqreturn_t serial21285_rx_chars(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 unsigned int status, ch, flag, rxs, max_count = 256;

 status = *CSR_UARTFLG;
 while (!(status & 0x10) && max_count--) {
  ch = *CSR_UARTDR;
  flag = TTY_NORMAL;
  port->icount.rx++;

  rxs = *CSR_RXSTAT | RXSTAT_DUMMY_READ;
  if (unlikely(rxs & RXSTAT_ANYERR)) {
   if (rxs & RXSTAT_PARITY)
    port->icount.parity++;
   else if (rxs & RXSTAT_FRAME)
    port->icount.frame++;
   if (rxs & RXSTAT_OVERRUN)
    port->icount.overrun++;

   rxs &= port->read_status_mask;

   if (rxs & RXSTAT_PARITY)
    flag = TTY_PARITY;
   else if (rxs & RXSTAT_FRAME)
    flag = TTY_FRAME;
  }

  uart_insert_char(port, rxs, RXSTAT_OVERRUN, ch, flag);

  status = *CSR_UARTFLG;
 }
 tty_flip_buffer_push(&port->state->port);

 return IRQ_HANDLED;
}
