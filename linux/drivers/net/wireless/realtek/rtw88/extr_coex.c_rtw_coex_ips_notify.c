
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_coex_stat {int wl_under_ips; } ;
struct rtw_coex {scalar_t__ stop_dm; struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_coex coex; } ;


 scalar_t__ COEX_IPS_ENTER ;
 scalar_t__ COEX_IPS_LEAVE ;
 int COEX_SCBD_ACTIVE ;
 int COEX_SCBD_ALL ;
 int COEX_SCBD_ONOFF ;
 int COEX_SET_ANT_WOFF ;
 int __rtw_coex_init_hw_config (struct rtw_dev*,int) ;
 int rtw_coex_action_coex_all_off (struct rtw_dev*) ;
 int rtw_coex_set_ant_path (struct rtw_dev*,int,int ) ;
 int rtw_coex_write_scbd (struct rtw_dev*,int,int) ;

void rtw_coex_ips_notify(struct rtw_dev *rtwdev, u8 type)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;

 if (coex->stop_dm)
  return;

 if (type == COEX_IPS_ENTER) {
  coex_stat->wl_under_ips = 1;


  rtw_coex_write_scbd(rtwdev, COEX_SCBD_ALL, 0);

  rtw_coex_set_ant_path(rtwdev, 1, COEX_SET_ANT_WOFF);
  rtw_coex_action_coex_all_off(rtwdev);
 } else if (type == COEX_IPS_LEAVE) {
  rtw_coex_write_scbd(rtwdev, COEX_SCBD_ACTIVE | COEX_SCBD_ONOFF, 1);


  __rtw_coex_init_hw_config(rtwdev, 0);


  coex_stat->wl_under_ips = 0;
 }
}
