
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int RTW_FLAG_INACTIVE_PS ;
 int rtw_core_start (struct rtw_dev*) ;
 int rtw_err (struct rtw_dev*,char*) ;
 int rtw_flag_clear (struct rtw_dev*,int ) ;
 int rtw_set_channel (struct rtw_dev*) ;

__attribute__((used)) static int rtw_ips_pwr_up(struct rtw_dev *rtwdev)
{
 int ret;

 ret = rtw_core_start(rtwdev);
 if (ret)
  rtw_err(rtwdev, "leave idle state failed\n");

 rtw_set_channel(rtwdev);
 rtw_flag_clear(rtwdev, RTW_FLAG_INACTIVE_PS);

 return ret;
}
