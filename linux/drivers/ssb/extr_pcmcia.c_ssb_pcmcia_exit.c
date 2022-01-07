
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssb_bus {scalar_t__ bustype; TYPE_1__* host_pcmcia; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ SSB_BUSTYPE_PCMCIA ;
 int dev_attr_ssb_sprom ;
 int device_remove_file (int *,int *) ;

void ssb_pcmcia_exit(struct ssb_bus *bus)
{
 if (bus->bustype != SSB_BUSTYPE_PCMCIA)
  return;

 device_remove_file(&bus->host_pcmcia->dev, &dev_attr_ssb_sprom);
}
