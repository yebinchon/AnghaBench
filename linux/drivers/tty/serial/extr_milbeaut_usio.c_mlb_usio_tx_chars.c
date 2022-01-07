
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tx; } ;
struct uart_port {int x_char; int fifosize; scalar_t__ membase; TYPE_2__ icount; TYPE_1__* state; } ;
struct circ_buf {int* buf; size_t tail; } ;
struct TYPE_3__ {struct circ_buf xmit; } ;


 int MLB_USIO_FCR_FDRQ ;
 int MLB_USIO_FCR_FTIE ;
 scalar_t__ MLB_USIO_REG_DR ;
 scalar_t__ MLB_USIO_REG_FBYTE ;
 scalar_t__ MLB_USIO_REG_FCR ;
 scalar_t__ MLB_USIO_REG_SCR ;
 int MLB_USIO_SCR_TBIE ;
 int MLB_USIO_SCR_TIE ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int mlb_usio_stop_tx (struct uart_port*) ;
 int readb (scalar_t__) ;
 int readw (scalar_t__) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (struct uart_port*) ;
 int uart_write_wakeup (struct uart_port*) ;
 int writeb (int,scalar_t__) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void mlb_usio_tx_chars(struct uart_port *port)
{
 struct circ_buf *xmit = &port->state->xmit;
 int count;

 writew(readw(port->membase + MLB_USIO_REG_FCR) & ~MLB_USIO_FCR_FTIE,
        port->membase + MLB_USIO_REG_FCR);
 writeb(readb(port->membase + MLB_USIO_REG_SCR) &
        ~(MLB_USIO_SCR_TIE | MLB_USIO_SCR_TBIE),
        port->membase + MLB_USIO_REG_SCR);

 if (port->x_char) {
  writew(port->x_char, port->membase + MLB_USIO_REG_DR);
  port->icount.tx++;
  port->x_char = 0;
  return;
 }
 if (uart_circ_empty(xmit) || uart_tx_stopped(port)) {
  mlb_usio_stop_tx(port);
  return;
 }

 count = port->fifosize -
  (readw(port->membase + MLB_USIO_REG_FBYTE) & 0xff);

 do {
  writew(xmit->buf[xmit->tail], port->membase + MLB_USIO_REG_DR);

  xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
  port->icount.tx++;
  if (uart_circ_empty(xmit))
   break;

 } while (--count > 0);

 writew(readw(port->membase + MLB_USIO_REG_FCR) & ~MLB_USIO_FCR_FDRQ,
        port->membase + MLB_USIO_REG_FCR);

 writeb(readb(port->membase + MLB_USIO_REG_SCR) | MLB_USIO_SCR_TBIE,
        port->membase + MLB_USIO_REG_SCR);

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(port);

 if (uart_circ_empty(xmit))
  mlb_usio_stop_tx(port);
}
