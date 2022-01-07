
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_coex {int stop_dm; int freeze; scalar_t__ wl_rf_off; } ;
struct rtw_dev {struct rtw_coex coex; } ;


 int COEX_SCBD_ACTIVE ;
 int COEX_SCBD_ALL ;
 int COEX_SCBD_SCAN ;
 int COEX_SET_ANT_INIT ;
 int COEX_SET_ANT_WOFF ;
 int COEX_SET_ANT_WONLY ;
 int COEX_WLPRI_TX_BEACON ;
 int COEX_WLPRI_TX_BEACONQ ;
 int COEX_WLPRI_TX_RSP ;
 int rtw_coex_init_coex_var (struct rtw_dev*) ;
 int rtw_coex_monitor_bt_enable (struct rtw_dev*) ;
 int rtw_coex_query_bt_info (struct rtw_dev*) ;
 int rtw_coex_set_ant_path (struct rtw_dev*,int,int ) ;
 int rtw_coex_set_init (struct rtw_dev*) ;
 int rtw_coex_set_rfe_type (struct rtw_dev*) ;
 int rtw_coex_set_wl_pri_mask (struct rtw_dev*,int ,int) ;
 int rtw_coex_table (struct rtw_dev*,int ) ;
 int rtw_coex_tdma (struct rtw_dev*,int,int ) ;
 int rtw_coex_write_scbd (struct rtw_dev*,int,int) ;

__attribute__((used)) static void __rtw_coex_init_hw_config(struct rtw_dev *rtwdev, bool wifi_only)
{
 struct rtw_coex *coex = &rtwdev->coex;

 rtw_coex_init_coex_var(rtwdev);
 rtw_coex_monitor_bt_enable(rtwdev);
 rtw_coex_set_rfe_type(rtwdev);
 rtw_coex_set_init(rtwdev);


 rtw_coex_set_wl_pri_mask(rtwdev, COEX_WLPRI_TX_RSP, 1);


 rtw_coex_set_wl_pri_mask(rtwdev, COEX_WLPRI_TX_BEACON, 1);


 rtw_coex_set_wl_pri_mask(rtwdev, COEX_WLPRI_TX_BEACONQ, 1);


 if (coex->wl_rf_off) {
  rtw_coex_set_ant_path(rtwdev, 1, COEX_SET_ANT_WOFF);
  rtw_coex_write_scbd(rtwdev, COEX_SCBD_ALL, 0);
  coex->stop_dm = 1;
 } else if (wifi_only) {
  rtw_coex_set_ant_path(rtwdev, 1, COEX_SET_ANT_WONLY);
  rtw_coex_write_scbd(rtwdev, COEX_SCBD_ACTIVE | COEX_SCBD_SCAN,
        1);
  coex->stop_dm = 1;
 } else {
  rtw_coex_set_ant_path(rtwdev, 1, COEX_SET_ANT_INIT);
  rtw_coex_write_scbd(rtwdev, COEX_SCBD_ACTIVE | COEX_SCBD_SCAN,
        1);
  coex->stop_dm = 0;
  coex->freeze = 1;
 }


 rtw_coex_table(rtwdev, 0);
 rtw_coex_tdma(rtwdev, 1, 0);
 rtw_coex_query_bt_info(rtwdev);
}
