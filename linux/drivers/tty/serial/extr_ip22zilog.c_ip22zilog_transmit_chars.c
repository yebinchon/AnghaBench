
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zilog_channel {int control; int data; } ;
struct TYPE_6__ {int tx; } ;
struct TYPE_7__ {TYPE_2__ icount; TYPE_1__* state; scalar_t__ x_char; } ;
struct uart_ip22zilog_port {TYPE_3__ port; int flags; int curregs; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_5__ {struct circ_buf xmit; } ;


 int IP22ZILOG_FLAG_REGS_HELD ;
 int IP22ZILOG_FLAG_TX_ACTIVE ;
 int IP22ZILOG_FLAG_TX_STOPPED ;
 scalar_t__ RES_Tx_P ;
 unsigned char Tx_BUF_EMP ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 int ZSDELAY () ;
 scalar_t__ ZS_IS_CONS (struct uart_ip22zilog_port*) ;
 scalar_t__ ZS_REGS_HELD (struct uart_ip22zilog_port*) ;
 scalar_t__ ZS_TX_STOPPED (struct uart_ip22zilog_port*) ;
 int ZS_WSYNC (struct zilog_channel*) ;
 int __load_zsregs (struct zilog_channel*,int ) ;
 unsigned char readb (int *) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (TYPE_3__*) ;
 int uart_write_wakeup (TYPE_3__*) ;
 int writeb (scalar_t__,int *) ;

__attribute__((used)) static void ip22zilog_transmit_chars(struct uart_ip22zilog_port *up,
        struct zilog_channel *channel)
{
 struct circ_buf *xmit;

 if (ZS_IS_CONS(up)) {
  unsigned char status = readb(&channel->control);
  ZSDELAY();
  if (!(status & Tx_BUF_EMP))
   return;
 }

 up->flags &= ~IP22ZILOG_FLAG_TX_ACTIVE;

 if (ZS_REGS_HELD(up)) {
  __load_zsregs(channel, up->curregs);
  up->flags &= ~IP22ZILOG_FLAG_REGS_HELD;
 }

 if (ZS_TX_STOPPED(up)) {
  up->flags &= ~IP22ZILOG_FLAG_TX_STOPPED;
  goto ack_tx_int;
 }

 if (up->port.x_char) {
  up->flags |= IP22ZILOG_FLAG_TX_ACTIVE;
  writeb(up->port.x_char, &channel->data);
  ZSDELAY();
  ZS_WSYNC(channel);

  up->port.icount.tx++;
  up->port.x_char = 0;
  return;
 }

 if (up->port.state == ((void*)0))
  goto ack_tx_int;
 xmit = &up->port.state->xmit;
 if (uart_circ_empty(xmit))
  goto ack_tx_int;
 if (uart_tx_stopped(&up->port))
  goto ack_tx_int;

 up->flags |= IP22ZILOG_FLAG_TX_ACTIVE;
 writeb(xmit->buf[xmit->tail], &channel->data);
 ZSDELAY();
 ZS_WSYNC(channel);

 xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
 up->port.icount.tx++;

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&up->port);

 return;

ack_tx_int:
 writeb(RES_Tx_P, &channel->control);
 ZSDELAY();
 ZS_WSYNC(channel);
}
