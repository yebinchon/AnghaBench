
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int RTW_FLAG_LEISURE_PS ;
 int rtw_flag_check (struct rtw_dev*,int ) ;

bool rtw_in_lps(struct rtw_dev *rtwdev)
{
 return rtw_flag_check(rtwdev, RTW_FLAG_LEISURE_PS);
}
