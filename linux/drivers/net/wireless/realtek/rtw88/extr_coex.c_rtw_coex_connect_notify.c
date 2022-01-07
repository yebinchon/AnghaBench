
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_coex_stat {int wl_hi_pri_task1; int* cnt_wl; } ;
struct rtw_coex {int freeze; int defreeze_work; scalar_t__ stop_dm; struct rtw_coex_stat stat; } ;
struct rtw_dev {int hw; struct rtw_coex coex; } ;


 scalar_t__ COEX_ASSOCIATE_5G_FINISH ;
 scalar_t__ COEX_ASSOCIATE_5G_START ;
 scalar_t__ COEX_ASSOCIATE_START ;
 size_t COEX_CNT_WL_CONNPKT ;
 int COEX_RSN_2GCONFINISH ;
 int COEX_RSN_2GCONSTART ;
 int COEX_RSN_5GCONFINISH ;
 int COEX_RSN_5GCONSTART ;
 int COEX_SCBD_ACTIVE ;
 int COEX_SCBD_ONOFF ;
 int COEX_SCBD_SCAN ;
 int COEX_SET_ANT_2G ;
 int COEX_SET_ANT_5G ;
 int HZ ;
 int ieee80211_queue_delayed_work (int ,int *,int) ;
 int rtw_coex_run_coex (struct rtw_dev*,int ) ;
 int rtw_coex_set_ant_path (struct rtw_dev*,int,int ) ;
 int rtw_coex_write_scbd (struct rtw_dev*,int,int) ;

void rtw_coex_connect_notify(struct rtw_dev *rtwdev, u8 type)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;

 if (coex->stop_dm)
  return;

 rtw_coex_write_scbd(rtwdev, COEX_SCBD_ACTIVE | COEX_SCBD_SCAN |
       COEX_SCBD_ONOFF, 1);

 if (type == COEX_ASSOCIATE_5G_START) {
  rtw_coex_set_ant_path(rtwdev, 1, COEX_SET_ANT_5G);
  rtw_coex_run_coex(rtwdev, COEX_RSN_5GCONSTART);
 } else if (type == COEX_ASSOCIATE_5G_FINISH) {
  rtw_coex_set_ant_path(rtwdev, 1, COEX_SET_ANT_5G);
  rtw_coex_run_coex(rtwdev, COEX_RSN_5GCONFINISH);
 } else if (type == COEX_ASSOCIATE_START) {
  coex_stat->wl_hi_pri_task1 = 1;
  coex_stat->cnt_wl[COEX_CNT_WL_CONNPKT] = 2;


  rtw_coex_set_ant_path(rtwdev, 1, COEX_SET_ANT_2G);

  rtw_coex_run_coex(rtwdev, COEX_RSN_2GCONSTART);




  coex->freeze = 1;
  ieee80211_queue_delayed_work(rtwdev->hw, &coex->defreeze_work,
          5 * HZ);
 } else {
  coex_stat->wl_hi_pri_task1 = 0;
  coex->freeze = 0;

  rtw_coex_run_coex(rtwdev, COEX_RSN_2GCONFINISH);
 }
}
