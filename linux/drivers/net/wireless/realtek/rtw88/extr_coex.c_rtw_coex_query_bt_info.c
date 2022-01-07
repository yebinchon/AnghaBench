
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_coex_stat {scalar_t__ bt_disabled; } ;
struct rtw_coex {struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_coex coex; } ;


 int rtw_fw_query_bt_info (struct rtw_dev*) ;

__attribute__((used)) static void rtw_coex_query_bt_info(struct rtw_dev *rtwdev)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;

 if (coex_stat->bt_disabled)
  return;

 rtw_fw_query_bt_info(rtwdev);
}
