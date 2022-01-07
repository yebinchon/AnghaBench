
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int capabilities; TYPE_2__* dev; } ;
struct ssb_bus {scalar_t__ bustype; TYPE_3__ chipco; } ;
struct TYPE_4__ {int revision; } ;
struct TYPE_5__ {TYPE_1__ id; } ;


 scalar_t__ SSB_BUSTYPE_PCI ;
 int SSB_CHIPCO_CAP_SPROM ;

bool ssb_is_sprom_available(struct ssb_bus *bus)
{




 if (bus->bustype == SSB_BUSTYPE_PCI &&
     bus->chipco.dev &&
     bus->chipco.dev->id.revision >= 31)
  return bus->chipco.capabilities & SSB_CHIPCO_CAP_SPROM;

 return 1;
}
