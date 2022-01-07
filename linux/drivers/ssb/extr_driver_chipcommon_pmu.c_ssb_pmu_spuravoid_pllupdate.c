
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ssb_chipcommon {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* bus; int dev; } ;
struct TYPE_3__ {int chip_id; } ;


 int SSB_CHIPCO_PMU_CTL ;
 int SSB_CHIPCO_PMU_CTL_PLL_UPD ;
 int SSB_PMU1_PLLCTL0 ;
 int SSB_PMU1_PLLCTL1 ;
 int SSB_PMU1_PLLCTL2 ;
 int SSB_PMU1_PLLCTL3 ;
 int SSB_PMU1_PLLCTL4 ;
 int SSB_PMU1_PLLCTL5 ;
 int chipco_set32 (struct ssb_chipcommon*,int ,int ) ;
 int dev_err (int ,char*,int) ;
 int ssb_chipco_pll_write (struct ssb_chipcommon*,int ,int) ;

void ssb_pmu_spuravoid_pllupdate(struct ssb_chipcommon *cc, int spuravoid)
{
 u32 pmu_ctl = 0;

 switch (cc->dev->bus->chip_id) {
 case 0x4322:
  ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL0, 0x11100070);
  ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL1, 0x1014140a);
  ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL5, 0x88888854);
  if (spuravoid == 1)
   ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL2, 0x05201828);
  else
   ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL2, 0x05001828);
  pmu_ctl = SSB_CHIPCO_PMU_CTL_PLL_UPD;
  break;
 case 43222:
  if (spuravoid == 1) {
   ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL0, 0x11500008);
   ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL1, 0x0C000C06);
   ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL2, 0x0F600a08);
   ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL3, 0x00000000);
   ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL4, 0x2001E920);
   ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL5, 0x88888815);
  } else {
   ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL0, 0x11100008);
   ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL1, 0x0c000c06);
   ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL2, 0x03000a08);
   ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL3, 0x00000000);
   ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL4, 0x200005c0);
   ssb_chipco_pll_write(cc, SSB_PMU1_PLLCTL5, 0x88888855);
  }
  pmu_ctl = SSB_CHIPCO_PMU_CTL_PLL_UPD;
  break;
 default:
  dev_err(cc->dev->dev,
   "Unknown spuravoidance settings for chip 0x%04X, not changing PLL\n",
   cc->dev->bus->chip_id);
  return;
 }

 chipco_set32(cc, SSB_CHIPCO_PMU_CTL, pmu_ctl);
}
