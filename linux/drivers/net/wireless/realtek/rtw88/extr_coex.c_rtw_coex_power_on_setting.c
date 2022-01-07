
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_coex {int stop_dm; int wl_rf_off; } ;
struct rtw_dev {struct rtw_coex coex; } ;


 int BIT (int) ;
 int COEX_SET_ANT_POWERON ;
 int REG_SYS_FUNC_EN ;
 int rtw_coex_monitor_bt_enable (struct rtw_dev*) ;
 int rtw_coex_set_ant_path (struct rtw_dev*,int,int ) ;
 int rtw_coex_set_rfe_type (struct rtw_dev*) ;
 int rtw_write8 (struct rtw_dev*,int,int) ;
 int rtw_write8_set (struct rtw_dev*,int ,int) ;

void rtw_coex_power_on_setting(struct rtw_dev *rtwdev)
{
 struct rtw_coex *coex = &rtwdev->coex;

 coex->stop_dm = 1;
 coex->wl_rf_off = 0;


 rtw_write8_set(rtwdev, REG_SYS_FUNC_EN, BIT(0) | BIT(1));

 rtw_coex_monitor_bt_enable(rtwdev);
 rtw_coex_set_rfe_type(rtwdev);


 rtw_coex_set_ant_path(rtwdev, 1, COEX_SET_ANT_POWERON);


 rtw_write8(rtwdev, 0xff1a, 0x0);
}
