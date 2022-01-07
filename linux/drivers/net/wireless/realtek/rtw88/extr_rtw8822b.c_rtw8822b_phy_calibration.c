
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int rtw8822b_do_iqk (struct rtw_dev*) ;

__attribute__((used)) static void rtw8822b_phy_calibration(struct rtw_dev *rtwdev)
{
 rtw8822b_do_iqk(rtwdev);
}
