
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int btdm_ant_num; } ;
struct TYPE_3__ {int cnt_init_coex_dm; } ;
struct btc_coexist {int initilized; TYPE_2__ board_info; int adapter; TYPE_1__ statistics; } ;


 scalar_t__ IS_HARDWARE_TYPE_8192E (int ) ;
 scalar_t__ IS_HARDWARE_TYPE_8723B (int ) ;
 scalar_t__ IS_HARDWARE_TYPE_8821 (int ) ;
 int ex_btc8192e2ant_init_coex_dm (struct btc_coexist*) ;
 int ex_btc8723b1ant_init_coex_dm (struct btc_coexist*) ;
 int ex_btc8723b2ant_init_coex_dm (struct btc_coexist*) ;
 int ex_btc8821a1ant_init_coex_dm (struct btc_coexist*) ;
 int ex_btc8821a2ant_init_coex_dm (struct btc_coexist*) ;
 int halbtc_is_bt_coexist_available (struct btc_coexist*) ;

void exhalbtc_init_coex_dm(struct btc_coexist *btcoexist)
{
 if (!halbtc_is_bt_coexist_available(btcoexist))
  return;

 btcoexist->statistics.cnt_init_coex_dm++;

 if (IS_HARDWARE_TYPE_8821(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8821a2ant_init_coex_dm(btcoexist);
  else if (btcoexist->board_info.btdm_ant_num == 1)
   ex_btc8821a1ant_init_coex_dm(btcoexist);
 } else if (IS_HARDWARE_TYPE_8723B(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8723b2ant_init_coex_dm(btcoexist);
  else if (btcoexist->board_info.btdm_ant_num == 1)
   ex_btc8723b1ant_init_coex_dm(btcoexist);
 } else if (IS_HARDWARE_TYPE_8192E(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8192e2ant_init_coex_dm(btcoexist);
 }

 btcoexist->initilized = 1;
}
