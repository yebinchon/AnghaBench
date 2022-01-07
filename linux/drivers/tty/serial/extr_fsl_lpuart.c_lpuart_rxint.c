
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_port {int dummy; } ;
struct TYPE_5__ {unsigned int overrun; int frame; int parity; int rx; } ;
struct TYPE_6__ {unsigned char ignore_status_mask; unsigned char read_status_mask; int lock; scalar_t__ membase; TYPE_2__ icount; scalar_t__ sysrq; TYPE_1__* state; } ;
struct lpuart_port {TYPE_3__ port; } ;
struct TYPE_4__ {struct tty_port port; } ;


 unsigned int TTY_FRAME ;
 unsigned int TTY_NORMAL ;
 unsigned int TTY_OVERRUN ;
 unsigned int TTY_PARITY ;
 scalar_t__ UARTCFIFO ;
 int UARTCFIFO_RXFLUSH ;
 scalar_t__ UARTDR ;
 scalar_t__ UARTSFIFO ;
 unsigned char UARTSFIFO_RXEMPT ;
 int UARTSFIFO_RXOF ;
 scalar_t__ UARTSR1 ;
 unsigned char UARTSR1_FE ;
 unsigned char UARTSR1_OR ;
 unsigned char UARTSR1_PE ;
 unsigned char readb (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_flip_buffer_push (struct tty_port*) ;
 int tty_insert_flip_char (struct tty_port*,unsigned char,unsigned int) ;
 scalar_t__ uart_handle_sysrq_char (TYPE_3__*,unsigned char) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void lpuart_rxint(struct lpuart_port *sport)
{
 unsigned int flg, ignored = 0, overrun = 0;
 struct tty_port *port = &sport->port.state->port;
 unsigned long flags;
 unsigned char rx, sr;

 spin_lock_irqsave(&sport->port.lock, flags);

 while (!(readb(sport->port.membase + UARTSFIFO) & UARTSFIFO_RXEMPT)) {
  flg = TTY_NORMAL;
  sport->port.icount.rx++;




  sr = readb(sport->port.membase + UARTSR1);
  rx = readb(sport->port.membase + UARTDR);

  if (uart_handle_sysrq_char(&sport->port, (unsigned char)rx))
   continue;

  if (sr & (UARTSR1_PE | UARTSR1_OR | UARTSR1_FE)) {
   if (sr & UARTSR1_PE)
    sport->port.icount.parity++;
   else if (sr & UARTSR1_FE)
    sport->port.icount.frame++;

   if (sr & UARTSR1_OR)
    overrun++;

   if (sr & sport->port.ignore_status_mask) {
    if (++ignored > 100)
     goto out;
    continue;
   }

   sr &= sport->port.read_status_mask;

   if (sr & UARTSR1_PE)
    flg = TTY_PARITY;
   else if (sr & UARTSR1_FE)
    flg = TTY_FRAME;

   if (sr & UARTSR1_OR)
    flg = TTY_OVERRUN;




  }

  tty_insert_flip_char(port, rx, flg);
 }

out:
 if (overrun) {
  sport->port.icount.overrun += overrun;





  writeb(UARTCFIFO_RXFLUSH, sport->port.membase + UARTCFIFO);
  writeb(UARTSFIFO_RXOF, sport->port.membase + UARTSFIFO);
 }

 spin_unlock_irqrestore(&sport->port.lock, flags);

 tty_flip_buffer_push(port);
}
