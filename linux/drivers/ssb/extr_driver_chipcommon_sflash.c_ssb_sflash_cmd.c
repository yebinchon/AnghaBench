
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ssb_chipcommon {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev; } ;


 int SSB_CHIPCO_FLASHCTL ;
 int SSB_CHIPCO_FLASHCTL_BUSY ;
 int SSB_CHIPCO_FLASHCTL_START ;
 int chipco_read32 (struct ssb_chipcommon*,int ) ;
 int chipco_write32 (struct ssb_chipcommon*,int ,int) ;
 int cpu_relax () ;
 int dev_err (int ,char*) ;

__attribute__((used)) static void ssb_sflash_cmd(struct ssb_chipcommon *cc, u32 opcode)
{
 int i;
 chipco_write32(cc, SSB_CHIPCO_FLASHCTL,
         SSB_CHIPCO_FLASHCTL_START | opcode);
 for (i = 0; i < 1000; i++) {
  if (!(chipco_read32(cc, SSB_CHIPCO_FLASHCTL) &
        SSB_CHIPCO_FLASHCTL_BUSY))
   return;
  cpu_relax();
 }
 dev_err(cc->dev->dev, "SFLASH control command failed (timeout)!\n");
}
