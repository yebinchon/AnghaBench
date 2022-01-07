
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct serial_state* driver_data; } ;
struct async_icount {int buf_overrun; int brk; int parity; int overrun; int frame; int tx; int rx; int dcd; int rng; int dsr; int cts; } ;
struct serial_state {struct async_icount icount; } ;
struct serial_icounter_struct {int buf_overrun; int brk; int parity; int overrun; int frame; int tx; int rx; int dcd; int rng; int dsr; int cts; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int rs_get_icount(struct tty_struct *tty,
    struct serial_icounter_struct *icount)
{
 struct serial_state *info = tty->driver_data;
 struct async_icount cnow;
 unsigned long flags;

 local_irq_save(flags);
 cnow = info->icount;
 local_irq_restore(flags);
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
