
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ssb_chipcommon {TYPE_1__* dev; } ;
struct ssb_bus {int chip_id; } ;
struct TYPE_2__ {int dev; struct ssb_bus* bus; } ;


 int dev_err (int ,char*,int) ;

u32 ssb_pmu_get_cpu_clock(struct ssb_chipcommon *cc)
{
 struct ssb_bus *bus = cc->dev->bus;

 switch (bus->chip_id) {
 case 0x5354:

  return 240000000;
 default:
  dev_err(cc->dev->dev, "ERROR: PMU cpu clock unknown for device %04X\n",
   bus->chip_id);
  return 0;
 }
}
