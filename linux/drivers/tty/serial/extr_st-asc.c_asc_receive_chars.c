
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int overrun; int parity; int frame; int brk; int rx; } ;
struct uart_port {unsigned long read_status_mask; TYPE_3__ icount; int irq; TYPE_1__* state; } ;
struct tty_port {TYPE_2__* tty; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct tty_port port; } ;


 int ASC_CTL ;
 unsigned long ASC_CTL_MODE_8BIT ;
 unsigned long ASC_CTL_MODE_8BIT_PAR ;
 unsigned long ASC_CTL_MODE_MSK ;
 int ASC_RXBUF ;
 unsigned long ASC_RXBUF_DUMMY_BE ;
 unsigned long ASC_RXBUF_DUMMY_OE ;
 unsigned long ASC_RXBUF_DUMMY_RX ;
 unsigned long ASC_RXBUF_FE ;
 unsigned long ASC_RXBUF_PE ;
 int ASC_STA ;
 unsigned long ASC_STA_OE ;
 unsigned long ASC_STA_RBF ;
 char TTY_BREAK ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_PARITY ;
 unsigned long asc_in (struct uart_port*,int ) ;
 int irq_get_irq_data (int ) ;
 scalar_t__ irqd_is_wakeup_set (int ) ;
 int pm_wakeup_event (int ,int ) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,unsigned long) ;
 int uart_insert_char (struct uart_port*,unsigned long,unsigned long,unsigned long,char) ;

__attribute__((used)) static void asc_receive_chars(struct uart_port *port)
{
 struct tty_port *tport = &port->state->port;
 unsigned long status, mode;
 unsigned long c = 0;
 char flag;
 bool ignore_pe = 0;






 mode = asc_in(port, ASC_CTL) & ASC_CTL_MODE_MSK;
 if (mode == ASC_CTL_MODE_8BIT || mode == ASC_CTL_MODE_8BIT_PAR)
  ignore_pe = 1;

 if (irqd_is_wakeup_set(irq_get_irq_data(port->irq)))
  pm_wakeup_event(tport->tty->dev, 0);

 while ((status = asc_in(port, ASC_STA)) & ASC_STA_RBF) {
  c = asc_in(port, ASC_RXBUF) | ASC_RXBUF_DUMMY_RX;
  flag = TTY_NORMAL;
  port->icount.rx++;

  if (status & ASC_STA_OE || c & ASC_RXBUF_FE ||
      (c & ASC_RXBUF_PE && !ignore_pe)) {

   if (c & ASC_RXBUF_FE) {
    if (c == (ASC_RXBUF_FE | ASC_RXBUF_DUMMY_RX)) {
     port->icount.brk++;
     if (uart_handle_break(port))
      continue;
     c |= ASC_RXBUF_DUMMY_BE;
    } else {
     port->icount.frame++;
    }
   } else if (c & ASC_RXBUF_PE) {
    port->icount.parity++;
   }




   if (status & ASC_STA_OE) {
    port->icount.overrun++;
    c |= ASC_RXBUF_DUMMY_OE;
   }

   c &= port->read_status_mask;

   if (c & ASC_RXBUF_DUMMY_BE)
    flag = TTY_BREAK;
   else if (c & ASC_RXBUF_PE)
    flag = TTY_PARITY;
   else if (c & ASC_RXBUF_FE)
    flag = TTY_FRAME;
  }

  if (uart_handle_sysrq_char(port, c & 0xff))
   continue;

  uart_insert_char(port, c, ASC_RXBUF_DUMMY_OE, c & 0xff, flag);
 }


 tty_flip_buffer_push(tport);
}
