
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int revision; } ;
struct ssb_device {TYPE_1__ id; struct ssb_bus* bus; } ;
struct ssb_chipcommon {struct ssb_device* dev; } ;
struct ssb_bus {int chip_id; scalar_t__ chip_rev; } ;


 int DIV_ROUND_UP (int,unsigned long) ;
 int SSB_CHIPCO_FLASH_WAITCNT ;
 int SSB_CHIPCO_PCMCIA_MEMWAIT ;
 int SSB_CHIPCO_PROG_CFG ;
 int SSB_CHIPCO_PROG_WAITCNT ;
 int SSB_FLASH_WCNT_1_SHIFT ;
 int SSB_FLASH_WCNT_3_SHIFT ;
 int SSB_PROG_WCNT_1_SHIFT ;
 int SSB_PROG_WCNT_2_SHIFT ;
 int SSB_PROG_WCNT_3_SHIFT ;
 int chipco_write32 (struct ssb_chipcommon*,int ,int) ;

void ssb_chipco_timing_init(struct ssb_chipcommon *cc,
       unsigned long ns)
{
 struct ssb_device *dev = cc->dev;
 struct ssb_bus *bus = dev->bus;
 u32 tmp;


 chipco_write32(cc, SSB_CHIPCO_PROG_CFG, 0x11);
 tmp = DIV_ROUND_UP(10, ns) << SSB_PROG_WCNT_3_SHIFT;
 tmp |= DIV_ROUND_UP(40, ns) << SSB_PROG_WCNT_1_SHIFT;
 tmp |= DIV_ROUND_UP(240, ns);
 chipco_write32(cc, SSB_CHIPCO_PROG_WAITCNT, tmp);


 tmp = DIV_ROUND_UP(10, ns) << SSB_FLASH_WCNT_3_SHIFT;
 tmp |= DIV_ROUND_UP(10, ns) << SSB_FLASH_WCNT_1_SHIFT;
 tmp |= DIV_ROUND_UP(120, ns);
 if ((bus->chip_id == 0x5365) ||
     (dev->id.revision < 9))
  chipco_write32(cc, SSB_CHIPCO_FLASH_WAITCNT, tmp);
 if ((bus->chip_id == 0x5365) ||
     (dev->id.revision < 9) ||
     ((bus->chip_id == 0x5350) && (bus->chip_rev == 0)))
  chipco_write32(cc, SSB_CHIPCO_PCMCIA_MEMWAIT, tmp);

 if (bus->chip_id == 0x5350) {

  tmp = DIV_ROUND_UP(10, ns) << SSB_PROG_WCNT_3_SHIFT;
  tmp |= DIV_ROUND_UP(20, ns) << SSB_PROG_WCNT_2_SHIFT;
  tmp |= DIV_ROUND_UP(100, ns) << SSB_PROG_WCNT_1_SHIFT;
  tmp |= DIV_ROUND_UP(120, ns);
  chipco_write32(cc, SSB_CHIPCO_PROG_WAITCNT, tmp);
 }
}
