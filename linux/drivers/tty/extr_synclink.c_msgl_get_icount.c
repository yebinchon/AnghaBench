
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct mgsl_struct* driver_data; } ;
struct serial_icounter_struct {int buf_overrun; int brk; int parity; int overrun; int frame; int tx; int rx; int dcd; int rng; int dsr; int cts; } ;
struct mgsl_icount {int buf_overrun; int brk; int parity; int overrun; int frame; int tx; int rx; int dcd; int rng; int dsr; int cts; } ;
struct mgsl_struct {int irq_spinlock; struct mgsl_icount icount; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int msgl_get_icount(struct tty_struct *tty,
    struct serial_icounter_struct *icount)

{
 struct mgsl_struct * info = tty->driver_data;
 struct mgsl_icount cnow;
 unsigned long flags;

 spin_lock_irqsave(&info->irq_spinlock,flags);
 cnow = info->icount;
 spin_unlock_irqrestore(&info->irq_spinlock,flags);

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
