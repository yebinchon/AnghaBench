
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int dummy; } ;
struct tty_driver {unsigned int num; struct tty_port** ports; } ;


 scalar_t__ WARN_ON (int) ;

void tty_port_link_device(struct tty_port *port,
  struct tty_driver *driver, unsigned index)
{
 if (WARN_ON(index >= driver->num))
  return;
 driver->ports[index] = port;
}
