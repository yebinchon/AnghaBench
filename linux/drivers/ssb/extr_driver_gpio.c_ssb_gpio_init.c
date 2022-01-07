
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {int extif; int chipco; } ;


 scalar_t__ ssb_chipco_available (int *) ;
 scalar_t__ ssb_extif_available (int *) ;
 int ssb_gpio_chipco_init (struct ssb_bus*) ;
 int ssb_gpio_extif_init (struct ssb_bus*) ;

int ssb_gpio_init(struct ssb_bus *bus)
{
 if (ssb_chipco_available(&bus->chipco))
  return ssb_gpio_chipco_init(bus);
 else if (ssb_extif_available(&bus->extif))
  return ssb_gpio_extif_init(bus);
 return -1;
}
