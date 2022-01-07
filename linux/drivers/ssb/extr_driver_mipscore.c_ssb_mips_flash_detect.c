
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ssb_sflash {scalar_t__ size; scalar_t__ window; scalar_t__ present; } ;
struct ssb_pflash {int present; int buswidth; scalar_t__ window_size; scalar_t__ window; } ;
struct ssb_mipscore {TYPE_1__* dev; struct ssb_pflash pflash; struct ssb_sflash sflash; } ;
struct TYPE_7__ {int capabilities; int dev; } ;
struct ssb_bus {TYPE_2__ chipco; } ;
struct TYPE_9__ {int width; } ;
struct TYPE_8__ {scalar_t__ end; scalar_t__ start; } ;
struct TYPE_6__ {int dev; struct ssb_bus* bus; } ;


 int SSB_CHIPCO_CAP_FLASHT ;
 int SSB_CHIPCO_CFG_DS16 ;



 int SSB_CHIPCO_FLASH_CFG ;
 scalar_t__ SSB_FLASH1 ;
 scalar_t__ SSB_FLASH1_SZ ;
 scalar_t__ SSB_FLASH2 ;
 scalar_t__ SSB_FLASH2_SZ ;
 int bcm47xx_nvram_init_from_mem (scalar_t__,scalar_t__) ;
 int dev_dbg (int ,char*) ;
 int ssb_chipco_available (TYPE_2__*) ;
 TYPE_4__ ssb_pflash_data ;
 TYPE_3__ ssb_pflash_resource ;
 int ssb_read32 (int ,int ) ;
 int ssb_sflash_init (TYPE_2__*) ;

__attribute__((used)) static void ssb_mips_flash_detect(struct ssb_mipscore *mcore)
{
 struct ssb_bus *bus = mcore->dev->bus;
 struct ssb_sflash *sflash = &mcore->sflash;
 struct ssb_pflash *pflash = &mcore->pflash;


 if (!ssb_chipco_available(&bus->chipco)) {
  pflash->present = 1;
  pflash->buswidth = 2;
  pflash->window = SSB_FLASH1;
  pflash->window_size = SSB_FLASH1_SZ;
  goto ssb_pflash;
 }


 switch (bus->chipco.capabilities & SSB_CHIPCO_CAP_FLASHT) {
 case 128:
 case 130:
  dev_dbg(mcore->dev->dev, "Found serial flash\n");
  ssb_sflash_init(&bus->chipco);
  break;
 case 129:
  dev_dbg(mcore->dev->dev, "Found parallel flash\n");
  pflash->present = 1;
  pflash->window = SSB_FLASH2;
  pflash->window_size = SSB_FLASH2_SZ;
  if ((ssb_read32(bus->chipco.dev, SSB_CHIPCO_FLASH_CFG)
                 & SSB_CHIPCO_CFG_DS16) == 0)
   pflash->buswidth = 1;
  else
   pflash->buswidth = 2;
  break;
 }

ssb_pflash:
 if (sflash->present) {



 } else if (pflash->present) {




  ssb_pflash_data.width = pflash->buswidth;
  ssb_pflash_resource.start = pflash->window;
  ssb_pflash_resource.end = pflash->window + pflash->window_size;
 }
}
