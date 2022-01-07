
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct fw_serial* private; } ;
struct fwtty_port {int index; } ;
struct fw_serial {TYPE_1__** ports; } ;
struct TYPE_2__ {int index; } ;


 int fwtty_debugfs_show_port (struct seq_file*,struct fwtty_port*) ;
 struct fwtty_port* fwtty_port_get (int ) ;
 int fwtty_port_put (struct fwtty_port*) ;
 int fwtty_proc_show_port (struct seq_file*,struct fwtty_port*) ;
 int num_ports ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int fwtty_stats_show(struct seq_file *m, void *v)
{
 struct fw_serial *serial = m->private;
 struct fwtty_port *port;
 int i;

 for (i = 0; i < num_ports; ++i) {
  port = fwtty_port_get(serial->ports[i]->index);
  if (port) {
   seq_printf(m, "%2d:", port->index);
   fwtty_proc_show_port(m, port);
   fwtty_debugfs_show_port(m, port);
   fwtty_port_put(port);
   seq_puts(m, "\n");
  }
 }
 return 0;
}
