
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_vif {int dummy; } ;
struct rtw_lps_conf {int mode; struct rtw_vif* rtwvif; } ;
struct rtw_coex_stat {int wl_force_lps_ctrl; } ;
struct rtw_coex {struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_lps_conf lps_conf; struct rtw_coex coex; } ;




 int rtw_fw_coex_tdma_type (struct rtw_dev*,int,int ,int ,int ,int ) ;
 int rtw_in_lps (struct rtw_dev*) ;
 int rtw_leave_lps (struct rtw_dev*,struct rtw_vif*) ;

__attribute__((used)) static void rtw_coex_power_save_state(struct rtw_dev *rtwdev, u8 ps_type,
          u8 lps_val, u8 rpwm_val)
{
 struct rtw_lps_conf *lps_conf = &rtwdev->lps_conf;
 struct rtw_vif *rtwvif;
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;
 u8 lps_mode = 0x0;

 lps_mode = rtwdev->lps_conf.mode;

 switch (ps_type) {
 case 128:

  coex_stat->wl_force_lps_ctrl = 0;

  rtwvif = lps_conf->rtwvif;
  if (rtwvif && rtw_in_lps(rtwdev))
   rtw_leave_lps(rtwdev, rtwvif);
  break;
 case 129:
  coex_stat->wl_force_lps_ctrl = 1;
  if (lps_mode)
   rtw_fw_coex_tdma_type(rtwdev, 0x8, 0, 0, 0, 0);

  rtwvif = lps_conf->rtwvif;
  if (rtwvif && rtw_in_lps(rtwdev))
   rtw_leave_lps(rtwdev, rtwvif);
  break;
 default:
  break;
 }
}
