
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_lps_conf {int awake_interval; scalar_t__ smart_ps; scalar_t__ rlbm; int state; } ;
struct rtw_dev {struct rtw_lps_conf lps_conf; } ;


 int COEX_LPS_DISABLE ;
 int RTW_ALL_ON ;
 int RTW_FLAG_LEISURE_PS ;
 int rtw_coex_lps_notify (struct rtw_dev*,int ) ;
 int rtw_flag_clear (struct rtw_dev*,int ) ;
 int rtw_fw_set_pwr_mode (struct rtw_dev*) ;

__attribute__((used)) static void rtw_leave_lps_core(struct rtw_dev *rtwdev)
{
 struct rtw_lps_conf *conf = &rtwdev->lps_conf;

 conf->state = RTW_ALL_ON;
 conf->awake_interval = 1;
 conf->rlbm = 0;
 conf->smart_ps = 0;

 rtw_fw_set_pwr_mode(rtwdev);
 rtw_flag_clear(rtwdev, RTW_FLAG_LEISURE_PS);

 rtw_coex_lps_notify(rtwdev, COEX_LPS_DISABLE);
}
