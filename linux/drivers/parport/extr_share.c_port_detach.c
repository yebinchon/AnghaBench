
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport_driver {int (* detach ) (int ) ;} ;
struct device {int dummy; } ;


 scalar_t__ is_parport (struct device*) ;
 int stub1 (int ) ;
 int to_parport_dev (struct device*) ;

__attribute__((used)) static int port_detach(struct device *dev, void *_drv)
{
 struct parport_driver *drv = _drv;

 if (is_parport(dev) && drv->detach)
  drv->detach(to_parport_dev(dev));

 return 0;
}
