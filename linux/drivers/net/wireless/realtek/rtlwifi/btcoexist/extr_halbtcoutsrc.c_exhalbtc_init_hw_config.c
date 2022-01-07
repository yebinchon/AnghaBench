
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int btdm_ant_num; } ;
struct TYPE_4__ {int cnt_init_hw_config; } ;
struct btc_coexist {TYPE_1__ board_info; int adapter; TYPE_2__ statistics; } ;


 scalar_t__ IS_HARDWARE_TYPE_8192E (int ) ;
 scalar_t__ IS_HARDWARE_TYPE_8723A (int ) ;
 scalar_t__ IS_HARDWARE_TYPE_8723B (int ) ;
 scalar_t__ IS_HARDWARE_TYPE_8821 (int ) ;
 int ex_btc8192e2ant_init_hwconfig (struct btc_coexist*) ;
 int ex_btc8723b1ant_init_hwconfig (struct btc_coexist*,int) ;
 int ex_btc8723b2ant_init_hwconfig (struct btc_coexist*) ;
 int ex_btc8821a1ant_init_hwconfig (struct btc_coexist*,int) ;
 int ex_btc8821a2ant_init_hwconfig (struct btc_coexist*) ;
 int halbtc_is_bt_coexist_available (struct btc_coexist*) ;

void exhalbtc_init_hw_config(struct btc_coexist *btcoexist, bool wifi_only)
{
 if (!halbtc_is_bt_coexist_available(btcoexist))
  return;

 btcoexist->statistics.cnt_init_hw_config++;

 if (IS_HARDWARE_TYPE_8821(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8821a2ant_init_hwconfig(btcoexist);
  else if (btcoexist->board_info.btdm_ant_num == 1)
   ex_btc8821a1ant_init_hwconfig(btcoexist, wifi_only);
 } else if (IS_HARDWARE_TYPE_8723B(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8723b2ant_init_hwconfig(btcoexist);
  else if (btcoexist->board_info.btdm_ant_num == 1)
   ex_btc8723b1ant_init_hwconfig(btcoexist, wifi_only);
 } else if (IS_HARDWARE_TYPE_8723A(btcoexist->adapter)) {

 } else if (IS_HARDWARE_TYPE_8192E(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8192e2ant_init_hwconfig(btcoexist);
 }
}
