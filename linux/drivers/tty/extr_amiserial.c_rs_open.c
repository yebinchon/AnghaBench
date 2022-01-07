
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int index; int name; struct tty_port* port; struct serial_state* driver_data; } ;
struct tty_port {int low_latency; int flags; struct tty_struct* tty; int count; } ;
struct serial_state {struct tty_port tport; } ;
struct file {int dummy; } ;


 int ASYNC_LOW_LATENCY ;
 int ENODEV ;
 struct serial_state* rs_table ;
 scalar_t__ serial_paranoia_check (struct serial_state*,int ,char*) ;
 int startup (struct tty_struct*,struct serial_state*) ;
 int tty_port_block_til_ready (struct tty_port*,struct tty_struct*,struct file*) ;

__attribute__((used)) static int rs_open(struct tty_struct *tty, struct file * filp)
{
 struct serial_state *info = rs_table + tty->index;
 struct tty_port *port = &info->tport;
 int retval;

 port->count++;
 port->tty = tty;
 tty->driver_data = info;
 tty->port = port;
 if (serial_paranoia_check(info, tty->name, "rs_open"))
  return -ENODEV;

 port->low_latency = (port->flags & ASYNC_LOW_LATENCY) ? 1 : 0;

 retval = startup(tty, info);
 if (retval) {
  return retval;
 }

 return tty_port_block_til_ready(port, tty, filp);
}
