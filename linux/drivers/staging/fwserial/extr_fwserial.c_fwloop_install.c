
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct fwtty_port* driver_data; int index; } ;
struct tty_driver {int dummy; } ;
struct fwtty_port {int dummy; } ;


 struct fwtty_port* fwtty_port_get (int ) ;
 int fwtty_port_put (struct fwtty_port*) ;
 int table_idx (int ) ;
 int tty_standard_install (struct tty_driver*,struct tty_struct*) ;

__attribute__((used)) static int fwloop_install(struct tty_driver *driver, struct tty_struct *tty)
{
 struct fwtty_port *port = fwtty_port_get(table_idx(tty->index));
 int err;

 err = tty_standard_install(driver, tty);
 if (!err)
  tty->driver_data = port;
 else
  fwtty_port_put(port);
 return err;
}
