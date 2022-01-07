
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_state {int dummy; } ;
struct uart_port {int lock; int icount; } ;
struct uart_icount {int buf_overrun; int brk; int parity; int overrun; int frame; int tx; int rx; int dcd; int rng; int dsr; int cts; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct serial_icounter_struct {int buf_overrun; int brk; int parity; int overrun; int frame; int tx; int rx; int dcd; int rng; int dsr; int cts; } ;


 int EIO ;
 int memcpy (struct uart_icount*,int *,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int uart_port_deref (struct uart_port*) ;
 struct uart_port* uart_port_ref (struct uart_state*) ;

__attribute__((used)) static int uart_get_icount(struct tty_struct *tty,
     struct serial_icounter_struct *icount)
{
 struct uart_state *state = tty->driver_data;
 struct uart_icount cnow;
 struct uart_port *uport;

 uport = uart_port_ref(state);
 if (!uport)
  return -EIO;
 spin_lock_irq(&uport->lock);
 memcpy(&cnow, &uport->icount, sizeof(struct uart_icount));
 spin_unlock_irq(&uport->lock);
 uart_port_deref(uport);

 icount->cts = cnow.cts;
 icount->dsr = cnow.dsr;
 icount->rng = cnow.rng;
 icount->dcd = cnow.dcd;
 icount->rx = cnow.rx;
 icount->tx = cnow.tx;
 icount->frame = cnow.frame;
 icount->overrun = cnow.overrun;
 icount->parity = cnow.parity;
 icount->brk = cnow.brk;
 icount->buf_overrun = cnow.buf_overrun;

 return 0;
}
