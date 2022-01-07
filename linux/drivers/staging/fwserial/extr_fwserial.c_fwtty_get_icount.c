
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {struct fwtty_port* driver_data; } ;
struct stats {scalar_t__ xchars; } ;
struct serial_icounter_struct {int buf_overrun; int brk; int parity; int overrun; int frame; scalar_t__ tx; int rx; int dcd; int rng; int dsr; int cts; } ;
struct TYPE_6__ {int overrun; int brk; int parity; int frame; scalar_t__ tx; int rx; int dcd; int rng; int dsr; int cts; } ;
struct TYPE_4__ {scalar_t__ console; } ;
struct fwtty_port {TYPE_3__ icount; int con_data; TYPE_2__* fwcon_ops; TYPE_1__ port; int stats; } ;
typedef int stats ;
struct TYPE_5__ {int (* stats ) (struct stats*,int ) ;} ;


 int memcpy (struct stats*,int *,int) ;
 int stub1 (struct stats*,int ) ;

__attribute__((used)) static int fwtty_get_icount(struct tty_struct *tty,
       struct serial_icounter_struct *icount)
{
 struct fwtty_port *port = tty->driver_data;
 struct stats stats;

 memcpy(&stats, &port->stats, sizeof(stats));
 if (port->port.console)
  (*port->fwcon_ops->stats)(&stats, port->con_data);

 icount->cts = port->icount.cts;
 icount->dsr = port->icount.dsr;
 icount->rng = port->icount.rng;
 icount->dcd = port->icount.dcd;
 icount->rx = port->icount.rx;
 icount->tx = port->icount.tx + stats.xchars;
 icount->frame = port->icount.frame;
 icount->overrun = port->icount.overrun;
 icount->parity = port->icount.parity;
 icount->brk = port->icount.brk;
 icount->buf_overrun = port->icount.overrun;
 return 0;
}
