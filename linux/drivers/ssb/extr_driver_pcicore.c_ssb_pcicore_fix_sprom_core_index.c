
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ssb_pcicore {TYPE_1__* dev; } ;
struct TYPE_2__ {int core_index; } ;


 int SSB_PCICORE_SPROM (int ) ;
 int pcicore_read16 (struct ssb_pcicore*,int ) ;
 int pcicore_write16 (struct ssb_pcicore*,int ,int) ;

__attribute__((used)) static void ssb_pcicore_fix_sprom_core_index(struct ssb_pcicore *pc)
{
 u16 tmp = pcicore_read16(pc, SSB_PCICORE_SPROM(0));
 if (((tmp & 0xF000) >> 12) != pc->dev->core_index) {
  tmp &= ~0xF000;
  tmp |= (pc->dev->core_index << 12);
  pcicore_write16(pc, SSB_PCICORE_SPROM(0), tmp);
 }
}
