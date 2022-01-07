
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int COEX_IPS_ENTER ;
 int RTW_FLAG_INACTIVE_PS ;
 int rtw_coex_ips_notify (struct rtw_dev*,int ) ;
 int rtw_core_stop (struct rtw_dev*) ;
 int rtw_flag_set (struct rtw_dev*,int ) ;

int rtw_enter_ips(struct rtw_dev *rtwdev)
{
 rtw_flag_set(rtwdev, RTW_FLAG_INACTIVE_PS);

 rtw_coex_ips_notify(rtwdev, COEX_IPS_ENTER);

 rtw_core_stop(rtwdev);

 return 0;
}
