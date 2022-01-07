
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssb_mipscore {int nr_serial_ports; int serial_ports; TYPE_1__* dev; } ;
struct ssb_bus {int chipco; int extif; } ;
struct TYPE_2__ {struct ssb_bus* bus; } ;


 scalar_t__ ssb_chipco_available (int *) ;
 int ssb_chipco_serial_init (int *,int ) ;
 scalar_t__ ssb_extif_available (int *) ;
 int ssb_extif_serial_init (int *,int ) ;

__attribute__((used)) static void ssb_mips_serial_init(struct ssb_mipscore *mcore)
{
 struct ssb_bus *bus = mcore->dev->bus;

 if (ssb_extif_available(&bus->extif))
  mcore->nr_serial_ports = ssb_extif_serial_init(&bus->extif, mcore->serial_ports);
 else if (ssb_chipco_available(&bus->chipco))
  mcore->nr_serial_ports = ssb_chipco_serial_init(&bus->chipco, mcore->serial_ports);
 else
  mcore->nr_serial_ports = 0;
}
