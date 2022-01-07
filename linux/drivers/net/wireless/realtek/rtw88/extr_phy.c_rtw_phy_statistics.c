
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int rtw_phy_stat_false_alarm (struct rtw_dev*) ;
 int rtw_phy_stat_rssi (struct rtw_dev*) ;

__attribute__((used)) static void rtw_phy_statistics(struct rtw_dev *rtwdev)
{
 rtw_phy_stat_rssi(rtwdev);
 rtw_phy_stat_false_alarm(rtwdev);
}
