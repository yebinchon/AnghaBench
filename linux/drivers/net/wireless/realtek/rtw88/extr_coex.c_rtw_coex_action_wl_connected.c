
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_efuse {int share_ant; } ;
struct rtw_coex_dm {int * bt_rssi_state; int * wl_rssi_state; } ;
struct rtw_coex_stat {int bt_a2dp_sink; scalar_t__ wl_gl_busy; } ;
struct rtw_coex {struct rtw_coex_dm dm; struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_efuse efuse; struct rtw_coex coex; } ;
 scalar_t__ COEX_RSSI_HIGH (int ) ;
 int rtw_coex_action_bt_a2dp (struct rtw_dev*) ;
 int rtw_coex_action_bt_a2dp_hid (struct rtw_dev*) ;
 int rtw_coex_action_bt_a2dp_pan (struct rtw_dev*) ;
 int rtw_coex_action_bt_a2dp_pan_hid (struct rtw_dev*) ;
 int rtw_coex_action_bt_a2dpsink (struct rtw_dev*) ;
 int rtw_coex_action_bt_hfp (struct rtw_dev*) ;
 int rtw_coex_action_bt_hid (struct rtw_dev*) ;
 int rtw_coex_action_bt_idle (struct rtw_dev*) ;
 int rtw_coex_action_bt_pan (struct rtw_dev*) ;
 int rtw_coex_action_bt_pan_hid (struct rtw_dev*) ;
 int rtw_coex_action_freerun (struct rtw_dev*) ;
 int rtw_coex_algorithm (struct rtw_dev*) ;

__attribute__((used)) static void rtw_coex_action_wl_connected(struct rtw_dev *rtwdev)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;
 struct rtw_coex_dm *coex_dm = &coex->dm;
 struct rtw_efuse *efuse = &rtwdev->efuse;
 u8 algorithm;


 if (!efuse->share_ant && coex_stat->wl_gl_busy &&
     COEX_RSSI_HIGH(coex_dm->wl_rssi_state[3]) &&
     COEX_RSSI_HIGH(coex_dm->bt_rssi_state[0])) {
  rtw_coex_action_freerun(rtwdev);
  return;
 }

 algorithm = rtw_coex_algorithm(rtwdev);

 switch (algorithm) {
 case 132:
  rtw_coex_action_bt_hfp(rtwdev);
  break;
 case 131:
  rtw_coex_action_bt_hid(rtwdev);
  break;
 case 136:
  if (coex_stat->bt_a2dp_sink)
   rtw_coex_action_bt_a2dpsink(rtwdev);
  else
   rtw_coex_action_bt_a2dp(rtwdev);
  break;
 case 129:
  rtw_coex_action_bt_pan(rtwdev);
  break;
 case 135:
  rtw_coex_action_bt_a2dp_hid(rtwdev);
  break;
 case 134:
  rtw_coex_action_bt_a2dp_pan(rtwdev);
  break;
 case 128:
  rtw_coex_action_bt_pan_hid(rtwdev);
  break;
 case 133:
  rtw_coex_action_bt_a2dp_pan_hid(rtwdev);
  break;
 default:
 case 130:
  rtw_coex_action_bt_idle(rtwdev);
  break;
 }
}
