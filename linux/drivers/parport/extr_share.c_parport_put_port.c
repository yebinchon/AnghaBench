
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int bus_dev; } ;


 int put_device (int *) ;

void parport_put_port(struct parport *port)
{
 put_device(&port->bus_dev);
}
