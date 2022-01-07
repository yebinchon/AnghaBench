
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int rtw_mac_power_switch (struct rtw_dev*,int) ;

void rtw_mac_power_off(struct rtw_dev *rtwdev)
{
 rtw_mac_power_switch(rtwdev, 0);
}
