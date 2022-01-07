
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {struct serdev_controller* client_data; int * client_ops; } ;
struct serport {int dummy; } ;
struct serdev_controller {int dummy; } ;


 int ENODEV ;
 struct serport* serdev_controller_get_drvdata (struct serdev_controller*) ;
 int serdev_controller_put (struct serdev_controller*) ;
 int serdev_controller_remove (struct serdev_controller*) ;

int serdev_tty_port_unregister(struct tty_port *port)
{
 struct serdev_controller *ctrl = port->client_data;
 struct serport *serport = serdev_controller_get_drvdata(ctrl);

 if (!serport)
  return -ENODEV;

 serdev_controller_remove(ctrl);
 port->client_ops = ((void*)0);
 port->client_data = ((void*)0);
 serdev_controller_put(ctrl);

 return 0;
}
