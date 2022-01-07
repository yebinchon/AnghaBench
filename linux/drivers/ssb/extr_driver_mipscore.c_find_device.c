
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {struct ssb_bus* bus; } ;
struct ssb_bus {int nr_devices; struct ssb_device* devices; } ;


 int ssb_irqflag (struct ssb_device*) ;

__attribute__((used)) static struct ssb_device *find_device(struct ssb_device *rdev, int irqflag)
{
 struct ssb_bus *bus = rdev->bus;
 int i;
 for (i = 0; i < bus->nr_devices; i++) {
  struct ssb_device *dev;
  dev = &(bus->devices[i]);
  if (ssb_irqflag(dev) == irqflag)
   return dev;
 }
 return ((void*)0);
}
