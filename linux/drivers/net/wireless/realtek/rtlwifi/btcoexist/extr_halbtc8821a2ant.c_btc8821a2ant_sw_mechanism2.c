
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btc_coexist {int dummy; } ;


 int NORMAL_EXEC ;
 int btc8821a2ant_dac_swing (struct btc_coexist*,int ,int,int ) ;

__attribute__((used)) static void btc8821a2ant_sw_mechanism2(struct btc_coexist *btcoexist,
           bool agc_table_shift, bool adc_back_off,
           bool sw_dac_swing, u32 dac_swing_lvl)
{
 btc8821a2ant_dac_swing(btcoexist, NORMAL_EXEC, sw_dac_swing,
          dac_swing_lvl);
}
