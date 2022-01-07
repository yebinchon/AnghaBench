
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_chipcommon {int dummy; } ;


 int SSB_CHIPCO_REGCTL_ADDR ;
 int SSB_CHIPCO_REGCTL_DATA ;
 int chipco_read32 (struct ssb_chipcommon*,int ) ;
 int chipco_write32 (struct ssb_chipcommon*,int ,int ) ;

__attribute__((used)) static void ssb_chipco_regctl_maskset(struct ssb_chipcommon *cc,
       u32 offset, u32 mask, u32 set)
{
 u32 value;

 chipco_read32(cc, SSB_CHIPCO_REGCTL_ADDR);
 chipco_write32(cc, SSB_CHIPCO_REGCTL_ADDR, offset);
 chipco_read32(cc, SSB_CHIPCO_REGCTL_ADDR);
 value = chipco_read32(cc, SSB_CHIPCO_REGCTL_DATA);
 value &= mask;
 value |= set;
 chipco_write32(cc, SSB_CHIPCO_REGCTL_DATA, value);
 chipco_read32(cc, SSB_CHIPCO_REGCTL_DATA);
}
