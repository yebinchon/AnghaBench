
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct cyclades_port* driver_data; } ;
struct serial_icounter_struct {int buf_overrun; int brk; int parity; int overrun; int frame; int tx; int rx; int dcd; int rng; int dsr; int cts; } ;
struct cyclades_icount {int buf_overrun; int brk; int parity; int overrun; int frame; int tx; int rx; int dcd; int rng; int dsr; int cts; } ;
struct cyclades_port {TYPE_1__* card; struct cyclades_icount icount; } ;
struct TYPE_2__ {int card_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cy_get_icount(struct tty_struct *tty,
    struct serial_icounter_struct *sic)
{
 struct cyclades_port *info = tty->driver_data;
 struct cyclades_icount cnow;
 unsigned long flags;

 spin_lock_irqsave(&info->card->card_lock, flags);
 cnow = info->icount;
 spin_unlock_irqrestore(&info->card->card_lock, flags);

 sic->cts = cnow.cts;
 sic->dsr = cnow.dsr;
 sic->rng = cnow.rng;
 sic->dcd = cnow.dcd;
 sic->rx = cnow.rx;
 sic->tx = cnow.tx;
 sic->frame = cnow.frame;
 sic->overrun = cnow.overrun;
 sic->parity = cnow.parity;
 sic->brk = cnow.brk;
 sic->buf_overrun = cnow.buf_overrun;
 return 0;
}
