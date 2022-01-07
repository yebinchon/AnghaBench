
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssb_chipcommon {int capabilities; TYPE_2__* dev; } ;
struct ssb_bus {int chip_id; int chip_rev; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; struct ssb_bus* bus; } ;


 int SSB_CHIPCO_CAP_PCTL ;
 int SSB_CHIPCO_CHIPCTL ;
 int SSB_CHIPCO_FREFSELDELAY ;
 int SSB_CHIPCO_PLLONDELAY ;
 int SSB_CHIPCO_SYSCLKCTL ;
 int chipco_pctl_clockfreqlimit (struct ssb_chipcommon*,int) ;
 int chipco_read32 (struct ssb_chipcommon*,int ) ;
 int chipco_write32 (struct ssb_chipcommon*,int ,int) ;

__attribute__((used)) static void chipco_powercontrol_init(struct ssb_chipcommon *cc)
{
 struct ssb_bus *bus = cc->dev->bus;

 if (bus->chip_id == 0x4321) {
  if (bus->chip_rev == 0)
   chipco_write32(cc, SSB_CHIPCO_CHIPCTL, 0x3A4);
  else if (bus->chip_rev == 1)
   chipco_write32(cc, SSB_CHIPCO_CHIPCTL, 0xA4);
 }

 if (!(cc->capabilities & SSB_CHIPCO_CAP_PCTL))
  return;

 if (cc->dev->id.revision >= 10) {

  chipco_write32(cc, SSB_CHIPCO_SYSCLKCTL,
          (chipco_read32(cc, SSB_CHIPCO_SYSCLKCTL) &
    0x0000FFFF) | 0x00040000);
 } else {
  int maxfreq;

  maxfreq = chipco_pctl_clockfreqlimit(cc, 1);
  chipco_write32(cc, SSB_CHIPCO_PLLONDELAY,
          (maxfreq * 150 + 999999) / 1000000);
  chipco_write32(cc, SSB_CHIPCO_FREFSELDELAY,
          (maxfreq * 15 + 999999) / 1000000);
 }
}
