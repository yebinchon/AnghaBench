
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int rtw8822c_dpk_mac_bb_tbl ;
 int rtw8822c_dpk_tx_pause (struct rtw_dev*) ;
 int rtw_load_table (struct rtw_dev*,int *) ;

__attribute__((used)) static void rtw8822c_dpk_mac_bb_setting(struct rtw_dev *rtwdev)
{
 rtw8822c_dpk_tx_pause(rtwdev);
 rtw_load_table(rtwdev, &rtw8822c_dpk_mac_bb_tbl);
}
