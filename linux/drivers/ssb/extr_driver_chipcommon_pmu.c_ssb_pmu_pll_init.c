
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int rev; } ;
struct ssb_chipcommon {TYPE_2__* dev; TYPE_1__ pmu; } ;
struct ssb_bus {scalar_t__ bustype; int chip_id; } ;
typedef int buf ;
struct TYPE_4__ {int dev; struct ssb_bus* bus; } ;


 scalar_t__ SSB_BUSTYPE_SSB ;
 int SSB_CHIPCO_PLLCTL_ADDR ;
 int SSB_CHIPCO_PLLCTL_DATA ;
 scalar_t__ bcm47xx_nvram_getenv (char*,char*,int) ;
 int chipco_write32 (struct ssb_chipcommon*,int ,int) ;
 int dev_err (int ,char*,int) ;
 int simple_strtoul (char*,int *,int ) ;
 int ssb_pmu0_pllinit_r0 (struct ssb_chipcommon*,int) ;
 int ssb_pmu1_pllinit_r0 (struct ssb_chipcommon*,int) ;

__attribute__((used)) static void ssb_pmu_pll_init(struct ssb_chipcommon *cc)
{
 struct ssb_bus *bus = cc->dev->bus;
 u32 crystalfreq = 0;

 if (bus->bustype == SSB_BUSTYPE_SSB) {





 }

 switch (bus->chip_id) {
 case 0x4312:
 case 0x4325:
  ssb_pmu1_pllinit_r0(cc, crystalfreq);
  break;
 case 0x4328:
  ssb_pmu0_pllinit_r0(cc, crystalfreq);
  break;
 case 0x5354:
  if (crystalfreq == 0)
   crystalfreq = 25000;
  ssb_pmu0_pllinit_r0(cc, crystalfreq);
  break;
 case 0x4322:
  if (cc->pmu.rev == 2) {
   chipco_write32(cc, SSB_CHIPCO_PLLCTL_ADDR, 0x0000000A);
   chipco_write32(cc, SSB_CHIPCO_PLLCTL_DATA, 0x380005C0);
  }
  break;
 case 43222:
  break;
 default:
  dev_err(cc->dev->dev, "ERROR: PLL init unknown for device %04X\n",
   bus->chip_id);
 }
}
