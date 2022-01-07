
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DS2482_REG_CFG_APU ;
 scalar_t__ ds2482_active_pullup ;
 int extra_config ;

__attribute__((used)) static inline u8 ds2482_calculate_config(u8 conf)
{
 conf |= extra_config;

 if (ds2482_active_pullup)
  conf |= DS2482_REG_CFG_APU;

 return conf | ((~conf & 0x0f) << 4);
}
