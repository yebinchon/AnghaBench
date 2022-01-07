
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_icount {int buf_overrun; int brk; int overrun; int parity; int frame; int rx; int tx; int dcd; int rng; int dsr; int cts; } ;
struct usb_serial_port {int lock; struct async_icount icount; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct serial_icounter_struct {int buf_overrun; int brk; int overrun; int parity; int frame; int rx; int tx; int dcd; int rng; int dsr; int cts; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int usb_serial_generic_get_icount(struct tty_struct *tty,
     struct serial_icounter_struct *icount)
{
 struct usb_serial_port *port = tty->driver_data;
 struct async_icount cnow;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 cnow = port->icount;
 spin_unlock_irqrestore(&port->lock, flags);

 icount->cts = cnow.cts;
 icount->dsr = cnow.dsr;
 icount->rng = cnow.rng;
 icount->dcd = cnow.dcd;
 icount->tx = cnow.tx;
 icount->rx = cnow.rx;
 icount->frame = cnow.frame;
 icount->parity = cnow.parity;
 icount->overrun = cnow.overrun;
 icount->brk = cnow.brk;
 icount->buf_overrun = cnow.buf_overrun;

 return 0;
}
