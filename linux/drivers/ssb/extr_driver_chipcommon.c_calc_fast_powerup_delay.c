
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ssb_chipcommon {int capabilities; unsigned int fast_pwrup_delay; TYPE_1__* dev; } ;
struct ssb_bus {scalar_t__ bustype; } ;
struct TYPE_2__ {struct ssb_bus* bus; } ;


 scalar_t__ SSB_BUSTYPE_PCI ;
 int SSB_CHIPCO_CAP_PCTL ;
 int SSB_CHIPCO_CAP_PMU ;
 int SSB_CHIPCO_PLLONDELAY ;
 int WARN_ON (unsigned int) ;
 int chipco_pctl_clockfreqlimit (struct ssb_chipcommon*,int ) ;
 int chipco_read32 (struct ssb_chipcommon*,int ) ;
 unsigned int pmu_fast_powerup_delay (struct ssb_chipcommon*) ;

__attribute__((used)) static void calc_fast_powerup_delay(struct ssb_chipcommon *cc)
{
 struct ssb_bus *bus = cc->dev->bus;
 int minfreq;
 unsigned int tmp;
 u32 pll_on_delay;

 if (bus->bustype != SSB_BUSTYPE_PCI)
  return;

 if (cc->capabilities & SSB_CHIPCO_CAP_PMU) {
  cc->fast_pwrup_delay = pmu_fast_powerup_delay(cc);
  return;
 }

 if (!(cc->capabilities & SSB_CHIPCO_CAP_PCTL))
  return;

 minfreq = chipco_pctl_clockfreqlimit(cc, 0);
 pll_on_delay = chipco_read32(cc, SSB_CHIPCO_PLLONDELAY);
 tmp = (((pll_on_delay + 2) * 1000000) + (minfreq - 1)) / minfreq;
 WARN_ON(tmp & ~0xFFFF);

 cc->fast_pwrup_delay = tmp;
}
