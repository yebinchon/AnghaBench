
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_coex {scalar_t__ stop_dm; } ;
struct rtw_dev {struct rtw_coex coex; } ;


 int COEX_RSN_WLSTATUS ;
 int rtw_coex_run_coex (struct rtw_dev*,int ) ;

void rtw_coex_wl_status_change_notify(struct rtw_dev *rtwdev)
{
 struct rtw_coex *coex = &rtwdev->coex;

 if (coex->stop_dm)
  return;

 rtw_coex_run_coex(rtwdev, COEX_RSN_WLSTATUS);
}
