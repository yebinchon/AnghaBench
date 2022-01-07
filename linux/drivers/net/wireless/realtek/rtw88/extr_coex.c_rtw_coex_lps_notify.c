
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_coex_stat {int wl_under_lps; scalar_t__ wl_force_lps_ctrl; } ;
struct rtw_coex {scalar_t__ stop_dm; struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_coex coex; } ;


 scalar_t__ COEX_LPS_DISABLE ;
 scalar_t__ COEX_LPS_ENABLE ;
 int COEX_RSN_LPS ;
 int COEX_SCBD_ACTIVE ;
 int rtw_coex_query_bt_info (struct rtw_dev*) ;
 int rtw_coex_run_coex (struct rtw_dev*,int ) ;
 int rtw_coex_write_scbd (struct rtw_dev*,int ,int) ;

void rtw_coex_lps_notify(struct rtw_dev *rtwdev, u8 type)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;

 if (coex->stop_dm)
  return;

 if (type == COEX_LPS_ENABLE) {
  coex_stat->wl_under_lps = 1;

  if (coex_stat->wl_force_lps_ctrl) {

   rtw_coex_write_scbd(rtwdev, COEX_SCBD_ACTIVE, 1);
  } else {

   rtw_coex_write_scbd(rtwdev, COEX_SCBD_ACTIVE, 0);

   rtw_coex_run_coex(rtwdev, COEX_RSN_LPS);
  }
 } else if (type == COEX_LPS_DISABLE) {
  coex_stat->wl_under_lps = 0;


  rtw_coex_write_scbd(rtwdev, COEX_SCBD_ACTIVE, 1);

  if (!coex_stat->wl_force_lps_ctrl)
   rtw_coex_query_bt_info(rtwdev);
 }
}
