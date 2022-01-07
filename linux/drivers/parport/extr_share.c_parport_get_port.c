
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int bus_dev; } ;
struct device {int dummy; } ;


 struct device* get_device (int *) ;
 struct parport* to_parport_dev (struct device*) ;

struct parport *parport_get_port(struct parport *port)
{
 struct device *dev = get_device(&port->bus_dev);

 return to_parport_dev(dev);
}
