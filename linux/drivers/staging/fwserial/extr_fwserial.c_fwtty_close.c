
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct fwtty_port* driver_data; } ;
struct fwtty_port {int port; } ;
struct file {int dummy; } ;


 int tty_port_close (int *,struct tty_struct*,struct file*) ;

__attribute__((used)) static void fwtty_close(struct tty_struct *tty, struct file *fp)
{
 struct fwtty_port *port = tty->driver_data;

 tty_port_close(&port->port, tty, fp);
}
