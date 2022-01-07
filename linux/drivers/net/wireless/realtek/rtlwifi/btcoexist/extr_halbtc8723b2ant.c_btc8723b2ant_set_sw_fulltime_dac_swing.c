
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btc_coexist {int dummy; } ;


 int btc8723b2ant_set_dac_swing_reg (struct btc_coexist*,int) ;

__attribute__((used)) static void btc8723b2ant_set_sw_fulltime_dac_swing(struct btc_coexist *btcoex,
         bool sw_dac_swing_on,
         u32 sw_dac_swing_lvl)
{
 if (sw_dac_swing_on)
  btc8723b2ant_set_dac_swing_reg(btcoex, sw_dac_swing_lvl);
 else
  btc8723b2ant_set_dac_swing_reg(btcoex, 0x18);
}
