
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {TYPE_1__* client_ops; } ;
struct TYPE_2__ {int (* write_wakeup ) (struct tty_port*) ;} ;


 int stub1 (struct tty_port*) ;

void tty_port_tty_wakeup(struct tty_port *port)
{
 port->client_ops->write_wakeup(port);
}
