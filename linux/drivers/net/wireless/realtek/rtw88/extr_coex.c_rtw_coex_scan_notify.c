
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_coex_stat {int wl_hi_pri_task2; } ;
struct rtw_coex {int freeze; scalar_t__ stop_dm; struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_coex coex; } ;


 int COEX_RSN_2GSCANSTART ;
 int COEX_RSN_5GSCANSTART ;
 int COEX_RSN_SCANFINISH ;
 scalar_t__ COEX_SCAN_FINISH ;
 scalar_t__ COEX_SCAN_START ;
 scalar_t__ COEX_SCAN_START_2G ;
 scalar_t__ COEX_SCAN_START_5G ;
 int COEX_SCBD_ACTIVE ;
 int COEX_SCBD_ONOFF ;
 int COEX_SCBD_SCAN ;
 int COEX_SET_ANT_2G ;
 int COEX_SET_ANT_5G ;
 int rtw_coex_run_coex (struct rtw_dev*,int ) ;
 int rtw_coex_set_ant_path (struct rtw_dev*,int,int ) ;
 int rtw_coex_write_scbd (struct rtw_dev*,int,int) ;

void rtw_coex_scan_notify(struct rtw_dev *rtwdev, u8 type)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;

 if (coex->stop_dm)
  return;

 coex->freeze = 0;

 if (type != COEX_SCAN_FINISH)
  rtw_coex_write_scbd(rtwdev, COEX_SCBD_ACTIVE | COEX_SCBD_SCAN |
        COEX_SCBD_ONOFF, 1);

 if (type == COEX_SCAN_START_5G) {
  rtw_coex_set_ant_path(rtwdev, 1, COEX_SET_ANT_5G);
  rtw_coex_run_coex(rtwdev, COEX_RSN_5GSCANSTART);
 } else if ((type == COEX_SCAN_START_2G) || (type == COEX_SCAN_START)) {
  coex_stat->wl_hi_pri_task2 = 1;


  rtw_coex_set_ant_path(rtwdev, 1, COEX_SET_ANT_2G);
  rtw_coex_run_coex(rtwdev, COEX_RSN_2GSCANSTART);
 } else {
  coex_stat->wl_hi_pri_task2 = 0;
  rtw_coex_run_coex(rtwdev, COEX_RSN_SCANFINISH);
 }
}
