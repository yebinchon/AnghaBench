
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct gb_tty* driver_data; } ;
struct serial_icounter_struct {int brk; int parity; int overrun; int frame; int dcd; int rng; int dsr; } ;
struct TYPE_2__ {int brk; int parity; int overrun; int frame; int dcd; int rng; int dsr; } ;
struct gb_tty {TYPE_1__ iocount; } ;



__attribute__((used)) static int gb_tty_get_icount(struct tty_struct *tty,
        struct serial_icounter_struct *icount)
{
 struct gb_tty *gb_tty = tty->driver_data;

 icount->dsr = gb_tty->iocount.dsr;
 icount->rng = gb_tty->iocount.rng;
 icount->dcd = gb_tty->iocount.dcd;
 icount->frame = gb_tty->iocount.frame;
 icount->overrun = gb_tty->iocount.overrun;
 icount->parity = gb_tty->iocount.parity;
 icount->brk = gb_tty->iocount.brk;

 return 0;
}
