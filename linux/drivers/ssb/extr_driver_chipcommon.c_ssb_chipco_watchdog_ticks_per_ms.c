
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssb_chipcommon {int capabilities; TYPE_2__* dev; } ;
struct ssb_bus {int dummy; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; struct ssb_bus* bus; } ;


 int SSB_CHIPCO_CAP_PMU ;
 int ssb_chipco_alp_clock (struct ssb_chipcommon*) ;
 int ssb_clockspeed (struct ssb_bus*) ;

__attribute__((used)) static int ssb_chipco_watchdog_ticks_per_ms(struct ssb_chipcommon *cc)
{
 struct ssb_bus *bus = cc->dev->bus;

 if (cc->capabilities & SSB_CHIPCO_CAP_PMU) {

   return 32;
 } else {
  if (cc->dev->id.revision < 18)
   return ssb_clockspeed(bus) / 1000;
  else
   return ssb_chipco_alp_clock(cc) / 1000;
 }
}
