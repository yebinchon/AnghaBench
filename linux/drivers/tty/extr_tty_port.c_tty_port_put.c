
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int kref; } ;


 int kref_put (int *,int ) ;
 int tty_port_destructor ;

void tty_port_put(struct tty_port *port)
{
 if (port)
  kref_put(&port->kref, tty_port_destructor);
}
