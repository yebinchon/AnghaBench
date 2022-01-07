
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;


 scalar_t__ GRP_CFG_REG ;
 int PINS_PER_BANK ;

__attribute__((used)) static inline u32 sunxi_grp_config_reg(u16 pin)
{
 u8 bank = pin / PINS_PER_BANK;

 return GRP_CFG_REG + bank * 0x4;
}
