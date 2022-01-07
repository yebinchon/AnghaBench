
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* carrier_raised ) (struct tty_port*) ;} ;


 int stub1 (struct tty_port*) ;

int tty_port_carrier_raised(struct tty_port *port)
{
 if (port->ops->carrier_raised == ((void*)0))
  return 1;
 return port->ops->carrier_raised(port);
}
