
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int bus_dev; } ;


 int device_unregister (int *) ;

void parport_del_port(struct parport *port)
{
 device_unregister(&port->bus_dev);
}
