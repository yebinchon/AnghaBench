
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stats {int throttled; int sent; int lost; int fifo_errs; int tx_stall; int dropped; } ;
struct seq_file {int dummy; } ;
struct TYPE_3__ {scalar_t__ console; } ;
struct fwtty_port {int stats; int con_data; TYPE_2__* fwcon_ops; TYPE_1__ port; } ;
typedef int stats ;
struct TYPE_4__ {int (* proc_show ) (struct seq_file*,int ) ;int (* stats ) (struct stats*,int ) ;} ;


 int fwtty_dump_profile (struct seq_file*,int *) ;
 int memcpy (struct stats*,int *,int) ;
 int seq_printf (struct seq_file*,char*,int ,int ,...) ;
 int seq_puts (struct seq_file*,char*) ;
 int stub1 (struct stats*,int ) ;
 int stub2 (struct seq_file*,int ) ;

__attribute__((used)) static void fwtty_debugfs_show_port(struct seq_file *m, struct fwtty_port *port)
{
 struct stats stats;

 memcpy(&stats, &port->stats, sizeof(stats));
 if (port->port.console)
  (*port->fwcon_ops->stats)(&stats, port->con_data);

 seq_printf(m, " dr:%d st:%d err:%d lost:%d", stats.dropped,
     stats.tx_stall, stats.fifo_errs, stats.lost);
 seq_printf(m, " pkts:%d thr:%d", stats.sent, stats.throttled);

 if (port->port.console) {
  seq_puts(m, "\n    ");
  (*port->fwcon_ops->proc_show)(m, port->con_data);
 }

 fwtty_dump_profile(m, &port->stats);
}
