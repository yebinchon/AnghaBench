
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stats {scalar_t__ xchars; } ;
struct seq_file {int dummy; } ;
struct TYPE_8__ {int brk; int parity; int overrun; int frame; int dcd; int rng; int dsr; int cts; int rx; scalar_t__ tx; } ;
struct TYPE_7__ {int offset; } ;
struct TYPE_5__ {scalar_t__ console; } ;
struct fwtty_port {TYPE_4__ icount; TYPE_3__ rx_handler; int con_data; TYPE_2__* fwcon_ops; TYPE_1__ port; int stats; } ;
typedef int stats ;
struct TYPE_6__ {int (* stats ) (struct stats*,int ) ;} ;


 int memcpy (struct stats*,int *,int) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,...) ;
 int stub1 (struct stats*,int ) ;

__attribute__((used)) static void fwtty_proc_show_port(struct seq_file *m, struct fwtty_port *port)
{
 struct stats stats;

 memcpy(&stats, &port->stats, sizeof(stats));
 if (port->port.console)
  (*port->fwcon_ops->stats)(&stats, port->con_data);

 seq_printf(m, " addr:%012llx tx:%d rx:%d", port->rx_handler.offset,
     port->icount.tx + stats.xchars, port->icount.rx);
 seq_printf(m, " cts:%d dsr:%d rng:%d dcd:%d", port->icount.cts,
     port->icount.dsr, port->icount.rng, port->icount.dcd);
 seq_printf(m, " fe:%d oe:%d pe:%d brk:%d", port->icount.frame,
     port->icount.overrun, port->icount.parity, port->icount.brk);
}
