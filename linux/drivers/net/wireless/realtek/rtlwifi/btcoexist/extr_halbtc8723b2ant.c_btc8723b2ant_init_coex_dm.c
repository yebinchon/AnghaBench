
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btc_coexist {int dummy; } ;
struct TYPE_2__ {scalar_t__ pop_event_cnt; } ;


 int BTC_PS_WIFI_NATIVE ;
 int FORCE_EXEC ;
 int NORMAL_EXEC ;
 int btc8723b2ant_coex_table_with_type (struct btc_coexist*,int ,int ) ;
 int btc8723b2ant_dec_bt_pwr (struct btc_coexist*,int ,int ) ;
 int btc8723b2ant_fw_dac_swing_lvl (struct btc_coexist*,int ,int) ;
 int btc8723b2ant_power_save_state (struct btc_coexist*,int ,int,int) ;
 int btc8723b2ant_ps_tdma (struct btc_coexist*,int ,int,int) ;
 int btc8723b2ant_sw_mechanism (struct btc_coexist*,int,int,int,int) ;
 TYPE_1__* coex_sta ;

__attribute__((used)) static void btc8723b2ant_init_coex_dm(struct btc_coexist *btcoexist)
{

 btc8723b2ant_coex_table_with_type(btcoexist, NORMAL_EXEC, 0);
 btc8723b2ant_power_save_state(btcoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);

 btc8723b2ant_ps_tdma(btcoexist, FORCE_EXEC, 0, 1);
 btc8723b2ant_fw_dac_swing_lvl(btcoexist, FORCE_EXEC, 6);
 btc8723b2ant_dec_bt_pwr(btcoexist, FORCE_EXEC, 0);

 btc8723b2ant_sw_mechanism(btcoexist, 0, 0, 0, 0);

 coex_sta->pop_event_cnt = 0;
}
