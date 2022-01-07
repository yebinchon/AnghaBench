
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct acm* driver_data; } ;
struct serial_icounter_struct {int brk; int parity; int overrun; int frame; int dcd; int rng; int dsr; } ;
struct TYPE_2__ {int brk; int parity; int overrun; int frame; int dcd; int rng; int dsr; } ;
struct acm {TYPE_1__ iocount; } ;



__attribute__((used)) static int acm_tty_get_icount(struct tty_struct *tty,
     struct serial_icounter_struct *icount)
{
 struct acm *acm = tty->driver_data;

 icount->dsr = acm->iocount.dsr;
 icount->rng = acm->iocount.rng;
 icount->dcd = acm->iocount.dcd;
 icount->frame = acm->iocount.frame;
 icount->overrun = acm->iocount.overrun;
 icount->parity = acm->iocount.parity;
 icount->brk = acm->iocount.brk;

 return 0;
}
