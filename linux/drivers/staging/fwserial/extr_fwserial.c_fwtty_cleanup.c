
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct fwtty_port* driver_data; } ;
struct fwtty_port {int dummy; } ;


 int fwtty_port_put (struct fwtty_port*) ;

__attribute__((used)) static void fwtty_cleanup(struct tty_struct *tty)
{
 struct fwtty_port *port = tty->driver_data;

 tty->driver_data = ((void*)0);
 fwtty_port_put(port);
}
