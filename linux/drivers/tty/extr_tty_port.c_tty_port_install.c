
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct tty_port* port; } ;
struct tty_port {int dummy; } ;
struct tty_driver {int dummy; } ;


 int tty_standard_install (struct tty_driver*,struct tty_struct*) ;

int tty_port_install(struct tty_port *port, struct tty_driver *driver,
  struct tty_struct *tty)
{
 tty->port = port;
 return tty_standard_install(driver, tty);
}
