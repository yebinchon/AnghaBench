
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int btdm_ant_num; } ;
struct btc_coexist {int adapter; TYPE_1__ board_info; } ;


 scalar_t__ IS_HARDWARE_TYPE_8192E (int ) ;
 scalar_t__ IS_HARDWARE_TYPE_8723B (int ) ;
 scalar_t__ IS_HARDWARE_TYPE_8821 (int ) ;
 int ex_btc8723b1ant_rf_status_notify (struct btc_coexist*,int ) ;
 int halbtc_is_bt_coexist_available (struct btc_coexist*) ;

void exhalbtc_rf_status_notify(struct btc_coexist *btcoexist, u8 type)
{
 if (!halbtc_is_bt_coexist_available(btcoexist))
  return;

 if (IS_HARDWARE_TYPE_8821(btcoexist->adapter)) {
 } else if (IS_HARDWARE_TYPE_8723B(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 1)
   ex_btc8723b1ant_rf_status_notify(btcoexist, type);
 } else if (IS_HARDWARE_TYPE_8192E(btcoexist->adapter)) {
 }
}
