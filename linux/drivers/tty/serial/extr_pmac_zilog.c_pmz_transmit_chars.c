
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tx; } ;
struct TYPE_7__ {TYPE_2__ icount; TYPE_1__* state; scalar_t__ x_char; } ;
struct uart_pmac_port {TYPE_3__ port; int flags; int curregs; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
struct TYPE_5__ {struct circ_buf xmit; } ;


 int PMACZILOG_FLAG_REGS_HELD ;
 int PMACZILOG_FLAG_TX_ACTIVE ;
 int PMACZILOG_FLAG_TX_STOPPED ;
 int R0 ;
 int RES_Tx_P ;
 unsigned char Tx_BUF_EMP ;
 int UART_XMIT_SIZE ;
 scalar_t__ WAKEUP_CHARS ;
 scalar_t__ ZS_IS_CONS (struct uart_pmac_port*) ;
 int ZS_IS_OPEN (struct uart_pmac_port*) ;
 scalar_t__ ZS_REGS_HELD (struct uart_pmac_port*) ;
 scalar_t__ ZS_TX_STOPPED (struct uart_pmac_port*) ;
 int pmz_load_zsregs (struct uart_pmac_port*,int ) ;
 unsigned char read_zsreg (struct uart_pmac_port*,int ) ;
 scalar_t__ uart_circ_chars_pending (struct circ_buf*) ;
 scalar_t__ uart_circ_empty (struct circ_buf*) ;
 scalar_t__ uart_tx_stopped (TYPE_3__*) ;
 int uart_write_wakeup (TYPE_3__*) ;
 int write_zsdata (struct uart_pmac_port*,scalar_t__) ;
 int write_zsreg (struct uart_pmac_port*,int ,int ) ;
 int zssync (struct uart_pmac_port*) ;

__attribute__((used)) static void pmz_transmit_chars(struct uart_pmac_port *uap)
{
 struct circ_buf *xmit;

 if (ZS_IS_CONS(uap)) {
  unsigned char status = read_zsreg(uap, R0);
  if (!(status & Tx_BUF_EMP))
   return;
 }

 uap->flags &= ~PMACZILOG_FLAG_TX_ACTIVE;

 if (ZS_REGS_HELD(uap)) {
  pmz_load_zsregs(uap, uap->curregs);
  uap->flags &= ~PMACZILOG_FLAG_REGS_HELD;
 }

 if (ZS_TX_STOPPED(uap)) {
  uap->flags &= ~PMACZILOG_FLAG_TX_STOPPED;
  goto ack_tx_int;
 }
 if (!ZS_IS_OPEN(uap))
  goto ack_tx_int;

 if (uap->port.x_char) {
  uap->flags |= PMACZILOG_FLAG_TX_ACTIVE;
  write_zsdata(uap, uap->port.x_char);
  zssync(uap);
  uap->port.icount.tx++;
  uap->port.x_char = 0;
  return;
 }

 if (uap->port.state == ((void*)0))
  goto ack_tx_int;
 xmit = &uap->port.state->xmit;
 if (uart_circ_empty(xmit)) {
  uart_write_wakeup(&uap->port);
  goto ack_tx_int;
 }
 if (uart_tx_stopped(&uap->port))
  goto ack_tx_int;

 uap->flags |= PMACZILOG_FLAG_TX_ACTIVE;
 write_zsdata(uap, xmit->buf[xmit->tail]);
 zssync(uap);

 xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
 uap->port.icount.tx++;

 if (uart_circ_chars_pending(xmit) < WAKEUP_CHARS)
  uart_write_wakeup(&uap->port);

 return;

ack_tx_int:
 write_zsreg(uap, R0, RES_Tx_P);
 zssync(uap);
}
