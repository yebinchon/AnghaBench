
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtw_coex_stat {int wl_slot_extend; } ;
struct rtw_coex {scalar_t__ stop_dm; struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_coex coex; } ;


 scalar_t__ COEX_H2C69_WL_LEAKAP ;
 scalar_t__ COEX_MEDIA_CONNECT ;
 scalar_t__ COEX_MEDIA_CONNECT_5G ;
 int COEX_RSN_2GMEDIA ;
 int COEX_RSN_5GMEDIA ;
 int COEX_RSN_MEDIADISCON ;
 int COEX_SCBD_ACTIVE ;
 int COEX_SET_ANT_2G ;
 int COEX_SET_ANT_5G ;
 int COEX_WLPRI_RX_CCK ;
 scalar_t__ PARA1_H2C69_EN_5MS ;
 int rtw_coex_run_coex (struct rtw_dev*,int ) ;
 int rtw_coex_set_ant_path (struct rtw_dev*,int,int ) ;
 int rtw_coex_set_wl_pri_mask (struct rtw_dev*,int ,int) ;
 int rtw_coex_update_wl_ch_info (struct rtw_dev*,scalar_t__) ;
 int rtw_coex_write_scbd (struct rtw_dev*,int ,int) ;
 int rtw_fw_bt_wifi_control (struct rtw_dev*,scalar_t__,scalar_t__*) ;

void rtw_coex_media_status_notify(struct rtw_dev *rtwdev, u8 type)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;
 u8 para[6] = {0};

 if (coex->stop_dm)
  return;

 if (type == COEX_MEDIA_CONNECT_5G) {
  rtw_coex_write_scbd(rtwdev, COEX_SCBD_ACTIVE, 1);

  rtw_coex_set_ant_path(rtwdev, 1, COEX_SET_ANT_5G);
  rtw_coex_run_coex(rtwdev, COEX_RSN_5GMEDIA);
 } else if (type == COEX_MEDIA_CONNECT) {
  rtw_coex_write_scbd(rtwdev, COEX_SCBD_ACTIVE, 1);


  rtw_coex_set_ant_path(rtwdev, 1, COEX_SET_ANT_2G);


  rtw_coex_set_wl_pri_mask(rtwdev, COEX_WLPRI_RX_CCK, 1);


  para[0] = COEX_H2C69_WL_LEAKAP;
  para[1] = PARA1_H2C69_EN_5MS;
  rtw_fw_bt_wifi_control(rtwdev, para[0], &para[1]);
  coex_stat->wl_slot_extend = 1;
  rtw_coex_run_coex(rtwdev, COEX_RSN_2GMEDIA);
 } else {
  rtw_coex_write_scbd(rtwdev, COEX_SCBD_ACTIVE, 0);

  rtw_coex_set_wl_pri_mask(rtwdev, COEX_WLPRI_RX_CCK, 0);

  rtw_coex_run_coex(rtwdev, COEX_RSN_MEDIADISCON);
 }

 rtw_coex_update_wl_ch_info(rtwdev, type);
}
