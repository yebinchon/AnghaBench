
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int rtw8822c_dpk_afe_is_dpk_tbl ;
 int rtw8822c_dpk_afe_no_dpk_tbl ;
 int rtw_load_table (struct rtw_dev*,int *) ;

__attribute__((used)) static void rtw8822c_dpk_afe_setting(struct rtw_dev *rtwdev, bool is_do_dpk)
{
 if (is_do_dpk)
  rtw_load_table(rtwdev, &rtw8822c_dpk_afe_is_dpk_tbl);
 else
  rtw_load_table(rtwdev, &rtw8822c_dpk_afe_no_dpk_tbl);
}
