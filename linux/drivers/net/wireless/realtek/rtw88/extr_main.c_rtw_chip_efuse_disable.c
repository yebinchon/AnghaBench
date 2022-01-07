
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int rtw_hci_stop (struct rtw_dev*) ;
 int rtw_mac_power_off (struct rtw_dev*) ;

__attribute__((used)) static void rtw_chip_efuse_disable(struct rtw_dev *rtwdev)
{
 rtw_hci_stop(rtwdev);
 rtw_mac_power_off(rtwdev);
}
