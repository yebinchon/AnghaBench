
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssb_mipscore {TYPE_2__* dev; } ;
struct TYPE_3__ {int coreid; } ;
struct ssb_device {int irq; TYPE_1__ id; } ;
struct ssb_bus {unsigned int nr_devices; int chip_id; struct ssb_device* devices; int chipco; int extif; } ;
struct TYPE_4__ {int dev; struct ssb_bus* bus; } ;
 int dev_dbg (int ,char*) ;
 int dump_irq (struct ssb_bus*) ;
 int set_irq (struct ssb_device*,int ) ;
 scalar_t__ ssb_chipco_available (int *) ;
 int ssb_chipco_timing_init (int *,unsigned long) ;
 unsigned long ssb_clockspeed (struct ssb_bus*) ;
 scalar_t__ ssb_extif_available (int *) ;
 int ssb_extif_timing_init (int *,unsigned long) ;
 int ssb_mips_flash_detect (struct ssb_mipscore*) ;
 int ssb_mips_irq (struct ssb_device*) ;
 int ssb_mips_serial_init (struct ssb_mipscore*) ;

void ssb_mipscore_init(struct ssb_mipscore *mcore)
{
 struct ssb_bus *bus;
 struct ssb_device *dev;
 unsigned long hz, ns;
 unsigned int irq, i;

 if (!mcore->dev)
  return;

 dev_dbg(mcore->dev->dev, "Initializing MIPS core...\n");

 bus = mcore->dev->bus;
 hz = ssb_clockspeed(bus);
 if (!hz)
  hz = 100000000;
 ns = 1000000000 / hz;

 if (ssb_extif_available(&bus->extif))
  ssb_extif_timing_init(&bus->extif, ns);
 else if (ssb_chipco_available(&bus->chipco))
  ssb_chipco_timing_init(&bus->chipco, ns);


 for (irq = 2, i = 0; i < bus->nr_devices; i++) {
  int mips_irq;
  dev = &(bus->devices[i]);
  mips_irq = ssb_mips_irq(dev);
  if (mips_irq > 4)
   dev->irq = 0;
  else
   dev->irq = mips_irq + 2;
  if (dev->irq > 5)
   continue;
  switch (dev->id.coreid) {
  case 129:


   if ((bus->chip_id == 0x4710) && (irq <= 4)) {
    set_irq(dev, irq++);
   }
   break;
  case 130:
  case 133:
  case 132:
  case 134:
  case 128:

   if (irq <= 4) {
    set_irq(dev, irq++);
    break;
   }

  case 131:
   set_irq(dev, 0);
   break;
  }
 }
 dev_dbg(mcore->dev->dev, "after irq reconfiguration\n");
 dump_irq(bus);

 ssb_mips_serial_init(mcore);
 ssb_mips_flash_detect(mcore);
}
