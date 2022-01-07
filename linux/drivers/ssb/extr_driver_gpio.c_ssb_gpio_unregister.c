
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {int gpio; int extif; int chipco; } ;


 int gpiochip_remove (int *) ;
 scalar_t__ ssb_chipco_available (int *) ;
 scalar_t__ ssb_extif_available (int *) ;

int ssb_gpio_unregister(struct ssb_bus *bus)
{
 if (ssb_chipco_available(&bus->chipco) ||
     ssb_extif_available(&bus->extif)) {
  gpiochip_remove(&bus->gpio);
  return 0;
 }
 return -1;
}
