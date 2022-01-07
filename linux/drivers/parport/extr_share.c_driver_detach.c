
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport_driver {int (* detach ) (struct parport*) ;} ;
struct parport {int dummy; } ;
struct device_driver {int dummy; } ;


 int stub1 (struct parport*) ;
 struct parport_driver* to_parport_driver (struct device_driver*) ;

__attribute__((used)) static int driver_detach(struct device_driver *_drv, void *_port)
{
 struct parport *port = _port;
 struct parport_driver *drv = to_parport_driver(_drv);

 if (drv->detach)
  drv->detach(port);
 return 0;
}
