
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int dummy; } ;


 int __rtw_coex_init_hw_config (struct rtw_dev*,int) ;

void rtw_coex_init_hw_config(struct rtw_dev *rtwdev, bool wifi_only)
{
 __rtw_coex_init_hw_config(rtwdev, wifi_only);
}
