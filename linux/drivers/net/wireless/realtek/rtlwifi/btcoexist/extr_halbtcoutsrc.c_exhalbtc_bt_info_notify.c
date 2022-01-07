
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int btdm_ant_num; } ;
struct TYPE_4__ {int cnt_bt_info_notify; } ;
struct btc_coexist {TYPE_1__ board_info; int adapter; TYPE_2__ statistics; } ;


 scalar_t__ IS_HARDWARE_TYPE_8192E (int ) ;
 scalar_t__ IS_HARDWARE_TYPE_8723B (int ) ;
 scalar_t__ IS_HARDWARE_TYPE_8821 (int ) ;
 int ex_btc8192e2ant_bt_info_notify (struct btc_coexist*,int *,int ) ;
 int ex_btc8723b1ant_bt_info_notify (struct btc_coexist*,int *,int ) ;
 int ex_btc8723b2ant_bt_info_notify (struct btc_coexist*,int *,int ) ;
 int ex_btc8821a1ant_bt_info_notify (struct btc_coexist*,int *,int ) ;
 int ex_btc8821a2ant_bt_info_notify (struct btc_coexist*,int *,int ) ;
 int halbtc_is_bt_coexist_available (struct btc_coexist*) ;
 int halbtc_leave_low_power (struct btc_coexist*) ;
 int halbtc_normal_low_power (struct btc_coexist*) ;

void exhalbtc_bt_info_notify(struct btc_coexist *btcoexist,
        u8 *tmp_buf, u8 length)
{
 if (!halbtc_is_bt_coexist_available(btcoexist))
  return;
 btcoexist->statistics.cnt_bt_info_notify++;

 halbtc_leave_low_power(btcoexist);

 if (IS_HARDWARE_TYPE_8821(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8821a2ant_bt_info_notify(btcoexist, tmp_buf,
             length);
  else if (btcoexist->board_info.btdm_ant_num == 1)
   ex_btc8821a1ant_bt_info_notify(btcoexist, tmp_buf,
             length);
 } else if (IS_HARDWARE_TYPE_8723B(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8723b2ant_bt_info_notify(btcoexist, tmp_buf,
             length);
  else if (btcoexist->board_info.btdm_ant_num == 1)
   ex_btc8723b1ant_bt_info_notify(btcoexist, tmp_buf,
             length);
 } else if (IS_HARDWARE_TYPE_8192E(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8192e2ant_bt_info_notify(btcoexist, tmp_buf,
             length);
 }

 halbtc_normal_low_power(btcoexist);
}
