
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport_driver {int (* probe ) (struct pardevice*) ;int name; } ;
struct pardevice {int name; } ;
struct device {int driver; } ;


 int ENODEV ;
 scalar_t__ is_parport (struct device*) ;
 scalar_t__ strcmp (int ,int ) ;
 int stub1 (struct pardevice*) ;
 struct pardevice* to_pardevice (struct device*) ;
 struct parport_driver* to_parport_driver (int ) ;

__attribute__((used)) static int parport_probe(struct device *dev)
{
 struct parport_driver *drv;

 if (is_parport(dev))
  return -ENODEV;

 drv = to_parport_driver(dev->driver);
 if (!drv->probe) {

  struct pardevice *par_dev = to_pardevice(dev);

  if (strcmp(par_dev->name, drv->name))
   return -ENODEV;
  return 0;
 }

 return drv->probe(to_pardevice(dev));
}
