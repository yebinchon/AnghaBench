
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_port {int dummy; } ;
struct TYPE_6__ {int overrun; int frame; int parity; int rx; } ;
struct TYPE_7__ {unsigned long ignore_status_mask; unsigned long read_status_mask; int lock; scalar_t__ sysrq; TYPE_2__ icount; TYPE_1__* state; } ;
struct lpuart_port {TYPE_3__ port; } ;
struct TYPE_5__ {struct tty_port port; } ;


 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_OVERRUN ;
 unsigned int TTY_PARITY ;
 int UARTDATA ;
 int UARTFIFO ;
 unsigned long UARTFIFO_RXEMPT ;
 int UARTSTAT ;
 unsigned long UARTSTAT_FE ;
 unsigned long UARTSTAT_OR ;
 unsigned long UARTSTAT_PE ;
 unsigned long lpuart32_read (TYPE_3__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,unsigned long,unsigned int) ;
 scalar_t__ uart_handle_sysrq_char (TYPE_3__*,unsigned char) ;

__attribute__((used)) static void lpuart32_rxint(struct lpuart_port *sport)
{
 unsigned int flg, ignored = 0;
 struct tty_port *port = &sport->port.state->port;
 unsigned long flags;
 unsigned long rx, sr;

 spin_lock_irqsave(&sport->port.lock, flags);

 while (!(lpuart32_read(&sport->port, UARTFIFO) & UARTFIFO_RXEMPT)) {
  flg = TTY_NORMAL;
  sport->port.icount.rx++;




  sr = lpuart32_read(&sport->port, UARTSTAT);
  rx = lpuart32_read(&sport->port, UARTDATA);
  rx &= 0x3ff;

  if (uart_handle_sysrq_char(&sport->port, (unsigned char)rx))
   continue;

  if (sr & (UARTSTAT_PE | UARTSTAT_OR | UARTSTAT_FE)) {
   if (sr & UARTSTAT_PE)
    sport->port.icount.parity++;
   else if (sr & UARTSTAT_FE)
    sport->port.icount.frame++;

   if (sr & UARTSTAT_OR)
    sport->port.icount.overrun++;

   if (sr & sport->port.ignore_status_mask) {
    if (++ignored > 100)
     goto out;
    continue;
   }

   sr &= sport->port.read_status_mask;

   if (sr & UARTSTAT_PE)
    flg = TTY_PARITY;
   else if (sr & UARTSTAT_FE)
    flg = TTY_FRAME;

   if (sr & UARTSTAT_OR)
    flg = TTY_OVERRUN;




  }

  tty_insert_flip_char(port, rx, flg);
 }

out:
 spin_unlock_irqrestore(&sport->port.lock, flags);

 tty_flip_buffer_push(port);
}
