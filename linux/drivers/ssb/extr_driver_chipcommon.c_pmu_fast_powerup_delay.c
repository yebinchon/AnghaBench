
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ssb_chipcommon {TYPE_1__* dev; } ;
struct ssb_bus {int chip_id; } ;
struct TYPE_2__ {struct ssb_bus* bus; } ;



__attribute__((used)) static u16 pmu_fast_powerup_delay(struct ssb_chipcommon *cc)
{
 struct ssb_bus *bus = cc->dev->bus;

 switch (bus->chip_id) {
 case 0x4312:
 case 0x4322:
 case 0x4328:
  return 7000;
 case 0x4325:

 default:
  return 15000;
 }
}
