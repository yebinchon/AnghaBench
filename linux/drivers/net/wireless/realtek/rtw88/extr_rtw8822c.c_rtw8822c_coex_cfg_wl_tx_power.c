
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_coex_dm {scalar_t__ cur_wl_pwr_lvl; } ;
struct rtw_coex {struct rtw_coex_dm dm; } ;
struct rtw_dev {struct rtw_coex coex; } ;



__attribute__((used)) static void rtw8822c_coex_cfg_wl_tx_power(struct rtw_dev *rtwdev, u8 wl_pwr)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_dm *coex_dm = &coex->dm;

 if (wl_pwr == coex_dm->cur_wl_pwr_lvl)
  return;

 coex_dm->cur_wl_pwr_lvl = wl_pwr;
}
