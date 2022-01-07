
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_coex {scalar_t__ stop_dm; } ;
struct rtw_dev {struct rtw_coex coex; } ;


 int rtw_fw_bt_ignore_wlan_action (struct rtw_dev*,int) ;

__attribute__((used)) static void rtw_coex_ignore_wlan_act(struct rtw_dev *rtwdev, bool enable)
{
 struct rtw_coex *coex = &rtwdev->coex;

 if (coex->stop_dm)
  return;

 rtw_fw_bt_ignore_wlan_action(rtwdev, enable);
}
