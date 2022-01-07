
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int btdm_ant_num; } ;
struct TYPE_3__ {int cnt_media_status_notify; } ;
struct btc_coexist {TYPE_2__ board_info; int adapter; scalar_t__ manual_control; TYPE_1__ statistics; } ;
typedef enum rt_media_status { ____Placeholder_rt_media_status } rt_media_status ;


 int BTC_MEDIA_CONNECT ;
 int BTC_MEDIA_DISCONNECT ;
 scalar_t__ IS_HARDWARE_TYPE_8192E (int ) ;
 scalar_t__ IS_HARDWARE_TYPE_8723B (int ) ;
 scalar_t__ IS_HARDWARE_TYPE_8821 (int ) ;
 int RT_MEDIA_CONNECT ;
 int ex_btc8192e2ant_media_status_notify (struct btc_coexist*,int ) ;
 int ex_btc8723b1ant_media_status_notify (struct btc_coexist*,int ) ;
 int ex_btc8723b2ant_media_status_notify (struct btc_coexist*,int ) ;
 int ex_btc8821a1ant_media_status_notify (struct btc_coexist*,int ) ;
 int ex_btc8821a2ant_media_status_notify (struct btc_coexist*,int ) ;
 int halbtc_is_bt_coexist_available (struct btc_coexist*) ;
 int halbtc_leave_low_power (struct btc_coexist*) ;
 int halbtc_normal_low_power (struct btc_coexist*) ;

void exhalbtc_mediastatus_notify(struct btc_coexist *btcoexist,
     enum rt_media_status media_status)
{
 u8 status;

 if (!halbtc_is_bt_coexist_available(btcoexist))
  return;
 btcoexist->statistics.cnt_media_status_notify++;
 if (btcoexist->manual_control)
  return;

 if (RT_MEDIA_CONNECT == media_status)
  status = BTC_MEDIA_CONNECT;
 else
  status = BTC_MEDIA_DISCONNECT;

 halbtc_leave_low_power(btcoexist);

 if (IS_HARDWARE_TYPE_8821(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8821a2ant_media_status_notify(btcoexist, status);
  else if (btcoexist->board_info.btdm_ant_num == 1)
   ex_btc8821a1ant_media_status_notify(btcoexist, status);
 } else if (IS_HARDWARE_TYPE_8723B(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8723b2ant_media_status_notify(btcoexist, status);
  else if (btcoexist->board_info.btdm_ant_num == 1)
   ex_btc8723b1ant_media_status_notify(btcoexist, status);
 } else if (IS_HARDWARE_TYPE_8192E(btcoexist->adapter)) {
  if (btcoexist->board_info.btdm_ant_num == 2)
   ex_btc8192e2ant_media_status_notify(btcoexist, status);
 }

 halbtc_normal_low_power(btcoexist);
}
