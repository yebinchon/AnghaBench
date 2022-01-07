
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct fwtty_port {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int MAX_TOTAL_PORTS ;
 scalar_t__ capable (int ) ;
 struct fwtty_port* fwtty_port_get (int) ;
 int fwtty_port_put (struct fwtty_port*) ;
 int fwtty_proc_show_port (struct seq_file*,struct fwtty_port*) ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int fwtty_proc_show(struct seq_file *m, void *v)
{
 struct fwtty_port *port;
 int i;

 seq_puts(m, "fwserinfo: 1.0 driver: 1.0\n");
 for (i = 0; i < MAX_TOTAL_PORTS && (port = fwtty_port_get(i)); ++i) {
  seq_printf(m, "%2d:", i);
  if (capable(CAP_SYS_ADMIN))
   fwtty_proc_show_port(m, port);
  fwtty_port_put(port);
  seq_puts(m, "\n");
 }
 return 0;
}
