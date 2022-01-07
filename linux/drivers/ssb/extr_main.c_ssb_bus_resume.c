
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ setup_done; } ;
struct ssb_bus {int chipco; TYPE_1__ pcicore; int * mapped_device; } ;


 int ssb_bus_may_powerdown (struct ssb_bus*) ;
 int ssb_bus_powerup (struct ssb_bus*,int ) ;
 int ssb_chipco_resume (int *) ;
 int ssb_pcmcia_hardware_setup (struct ssb_bus*) ;

int ssb_bus_resume(struct ssb_bus *bus)
{
 int err;



 bus->mapped_device = ((void*)0);




 err = ssb_bus_powerup(bus, 0);
 if (err)
  return err;
 err = ssb_pcmcia_hardware_setup(bus);
 if (err) {
  ssb_bus_may_powerdown(bus);
  return err;
 }
 ssb_chipco_resume(&bus->chipco);
 ssb_bus_may_powerdown(bus);

 return 0;
}
