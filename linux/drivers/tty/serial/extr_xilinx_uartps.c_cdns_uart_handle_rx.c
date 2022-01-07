
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct uart_port {int read_status_mask; unsigned int ignore_status_mask; int lock; TYPE_2__* state; TYPE_1__ icount; scalar_t__ membase; struct cdns_uart* private_data; } ;
struct cdns_uart {int quirks; } ;
struct TYPE_4__ {int port; } ;


 scalar_t__ CDNS_UART_FIFO ;
 int CDNS_UART_IXR_BRK ;
 unsigned int CDNS_UART_IXR_FRAMING ;
 unsigned int CDNS_UART_IXR_OVERRUN ;
 unsigned int CDNS_UART_IXR_PARITY ;
 scalar_t__ CDNS_UART_RXBS ;
 unsigned int CDNS_UART_RXBS_BRK ;
 unsigned int CDNS_UART_RXBS_FRAMING ;
 unsigned int CDNS_UART_RXBS_PARITY ;
 int CDNS_UART_RXBS_SUPPORT ;
 scalar_t__ CDNS_UART_SR ;
 unsigned int CDNS_UART_SR_RXEMPTY ;
 char TTY_BREAK ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_OVERRUN ;
 char TTY_PARITY ;
 unsigned int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_char (int *,unsigned int,char) ;
 scalar_t__ uart_handle_break (struct uart_port*) ;
 scalar_t__ uart_handle_sysrq_char (struct uart_port*,unsigned int) ;

__attribute__((used)) static void cdns_uart_handle_rx(void *dev_id, unsigned int isrstatus)
{
 struct uart_port *port = (struct uart_port *)dev_id;
 struct cdns_uart *cdns_uart = port->private_data;
 unsigned int data;
 unsigned int rxbs_status = 0;
 unsigned int status_mask;
 unsigned int framerrprocessed = 0;
 char status = TTY_NORMAL;
 bool is_rxbs_support;

 is_rxbs_support = cdns_uart->quirks & CDNS_UART_RXBS_SUPPORT;

 while ((readl(port->membase + CDNS_UART_SR) &
  CDNS_UART_SR_RXEMPTY) != CDNS_UART_SR_RXEMPTY) {
  if (is_rxbs_support)
   rxbs_status = readl(port->membase + CDNS_UART_RXBS);
  data = readl(port->membase + CDNS_UART_FIFO);
  port->icount.rx++;






  if (!is_rxbs_support && (isrstatus & CDNS_UART_IXR_FRAMING)) {
   if (!data) {
    port->read_status_mask |= CDNS_UART_IXR_BRK;
    framerrprocessed = 1;
    continue;
   }
  }
  if (is_rxbs_support && (rxbs_status & CDNS_UART_RXBS_BRK)) {
   port->icount.brk++;
   status = TTY_BREAK;
   if (uart_handle_break(port))
    continue;
  }

  isrstatus &= port->read_status_mask;
  isrstatus &= ~port->ignore_status_mask;
  status_mask = port->read_status_mask;
  status_mask &= ~port->ignore_status_mask;

  if (data &&
      (port->read_status_mask & CDNS_UART_IXR_BRK)) {
   port->read_status_mask &= ~CDNS_UART_IXR_BRK;
   port->icount.brk++;
   if (uart_handle_break(port))
    continue;
  }

  if (uart_handle_sysrq_char(port, data))
   continue;

  if (is_rxbs_support) {
   if ((rxbs_status & CDNS_UART_RXBS_PARITY)
       && (status_mask & CDNS_UART_IXR_PARITY)) {
    port->icount.parity++;
    status = TTY_PARITY;
   }
   if ((rxbs_status & CDNS_UART_RXBS_FRAMING)
       && (status_mask & CDNS_UART_IXR_PARITY)) {
    port->icount.frame++;
    status = TTY_FRAME;
   }
  } else {
   if (isrstatus & CDNS_UART_IXR_PARITY) {
    port->icount.parity++;
    status = TTY_PARITY;
   }
   if ((isrstatus & CDNS_UART_IXR_FRAMING) &&
       !framerrprocessed) {
    port->icount.frame++;
    status = TTY_FRAME;
   }
  }
  if (isrstatus & CDNS_UART_IXR_OVERRUN) {
   port->icount.overrun++;
   tty_insert_flip_char(&port->state->port, 0,
          TTY_OVERRUN);
  }
  tty_insert_flip_char(&port->state->port, data, status);
  isrstatus = 0;
 }
 spin_unlock(&port->lock);
 tty_flip_buffer_push(&port->state->port);
 spin_lock(&port->lock);
}
