
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_lps_conf {int awake_interval; int rlbm; int smart_ps; int state; } ;
struct rtw_dev {struct rtw_lps_conf lps_conf; } ;


 int COEX_LPS_ENABLE ;
 int RTW_FLAG_LEISURE_PS ;
 int RTW_RF_OFF ;
 int rtw_coex_lps_notify (struct rtw_dev*,int ) ;
 int rtw_flag_set (struct rtw_dev*,int ) ;
 int rtw_fw_set_pwr_mode (struct rtw_dev*) ;

__attribute__((used)) static void rtw_enter_lps_core(struct rtw_dev *rtwdev)
{
 struct rtw_lps_conf *conf = &rtwdev->lps_conf;

 conf->state = RTW_RF_OFF;
 conf->awake_interval = 1;
 conf->rlbm = 1;
 conf->smart_ps = 2;

 rtw_coex_lps_notify(rtwdev, COEX_LPS_ENABLE);

 rtw_fw_set_pwr_mode(rtwdev);
 rtw_flag_set(rtwdev, RTW_FLAG_LEISURE_PS);
}
