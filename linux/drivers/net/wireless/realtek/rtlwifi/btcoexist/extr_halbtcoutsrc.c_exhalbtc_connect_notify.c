
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_4__ {int btdm_ant_num; } ;
struct TYPE_3__ {int cnt_connect_notify; } ;
struct btc_coexist {TYPE_2__ board_info; int adapter; int (* btc_get ) (struct btc_coexist*,int ,int*) ;scalar_t__ manual_control; TYPE_1__ statistics; } ;


 scalar_t__ BTC_ASSOCIATE_FINISH ;
 scalar_t__ BTC_ASSOCIATE_START ;
 int BTC_GET_BL_WIFI_UNDER_5G ;
 scalar_t__ IS_HARDWARE_TYPE_8192E (int ) ;
 scalar_t__ IS_HARDWARE_TYPE_8723B (int ) ;
 scalar_t__ IS_HARDWARE_TYPE_8821 (int ) ;
 int ex_btc8192e2ant_connect_notify (struct btc_coexist*,scalar_t__) ;
 int ex_btc8723b1ant_connect_notify (struct btc_coexist*,scalar_t__) ;
 int ex_btc8723b2ant_connect_notify (struct btc_coexist*,scalar_t__) ;
 int ex_btc8821a1ant_connect_notify (struct btc_coexist*,scalar_t__) ;
 int ex_btc8821a2ant_connect_notify (struct btc_coexist*,scalar_t__) ;
 int halbtc_is_bt_coexist_available (struct btc_coexist*) ;
 int halbtc_leave_low_power (struct btc_coexist*) ;
 int halbtc_normal_low_power (struct btc_coexist*) ;
 int stub1 (struct btc_coexist*,int ,int*) ;

void exhalbtc_connect_notify(struct btc_coexist *btcoexist, u8 action)
{
 u8 asso_type;
 bool wifi_under_5g;

 if (!halbtc_is_bt_coexist_available(btcoexist))
  return;
 btcoexist->statistics.cnt_connect_notify++;
 if (btcoexist->manual_control)
  return;

 btcoexist->btc_get(btcoexist, BTC_GET_BL_WIFI_UNDER_5G, &wifi_under_5g);

 if (action)
  asso_type = BTC_ASSOCIATE_START;
 else
  asso_type = BTC_ASSOCIATE_FINISH;

 halbtc_leave_low_power(btcoexist);

 if (IS_HARDWARE_TYPE_8821(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8821a2ant_connect_notify(btcoexist, asso_type);
  else if (btcoexist->board_info.btdm_ant_num == 1)
   ex_btc8821a1ant_connect_notify(btcoexist, asso_type);
 } else if (IS_HARDWARE_TYPE_8723B(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8723b2ant_connect_notify(btcoexist, asso_type);
  else if (btcoexist->board_info.btdm_ant_num == 1)
   ex_btc8723b1ant_connect_notify(btcoexist, asso_type);
 } else if (IS_HARDWARE_TYPE_8192E(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8192e2ant_connect_notify(btcoexist, asso_type);
 }

 halbtc_normal_low_power(btcoexist);
}
