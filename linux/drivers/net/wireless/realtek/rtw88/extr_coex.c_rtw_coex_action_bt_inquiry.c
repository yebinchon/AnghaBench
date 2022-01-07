
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_efuse {scalar_t__ share_ant; } ;
struct rtw_coex_stat {int bt_page; scalar_t__ wl_connected; scalar_t__ wl_hi_pri_task1; int bt_pan_exist; scalar_t__ bt_a2dp_exist; scalar_t__ wl_hi_pri_task2; scalar_t__ wl_linkscan_proc; } ;
struct rtw_coex {struct rtw_coex_stat stat; } ;
struct rtw_dev {struct rtw_chip_info* chip; struct rtw_efuse efuse; struct rtw_coex coex; } ;
struct rtw_chip_info {int * wl_rf_para_rx; } ;


 int COEX_SET_ANT_2G ;
 int RTW_DBG_COEX ;
 int rtw_coex_set_ant_path (struct rtw_dev*,int,int ) ;
 int rtw_coex_set_rf_para (struct rtw_dev*,int ) ;
 int rtw_coex_table (struct rtw_dev*,int) ;
 int rtw_coex_tdma (struct rtw_dev*,int,int) ;
 int rtw_dbg (struct rtw_dev*,int ,char*,int,int ) ;

__attribute__((used)) static void rtw_coex_action_bt_inquiry(struct rtw_dev *rtwdev)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_stat *coex_stat = &coex->stat;
 struct rtw_efuse *efuse = &rtwdev->efuse;
 struct rtw_chip_info *chip = rtwdev->chip;
 bool wl_hi_pri = 0;
 u8 table_case, tdma_case;

 if (coex_stat->wl_linkscan_proc || coex_stat->wl_hi_pri_task1 ||
     coex_stat->wl_hi_pri_task2)
  wl_hi_pri = 1;

 if (efuse->share_ant) {

  if (wl_hi_pri) {
   table_case = 15;
   if (coex_stat->bt_a2dp_exist &&
       !coex_stat->bt_pan_exist)
    tdma_case = 11;
   else if (coex_stat->wl_hi_pri_task1)
    tdma_case = 6;
   else if (!coex_stat->bt_page)
    tdma_case = 8;
   else
    tdma_case = 9;
  } else if (coex_stat->wl_connected) {
   table_case = 10;
   tdma_case = 10;
  } else {
   table_case = 1;
   tdma_case = 0;
  }
 } else {

  if (wl_hi_pri) {
   table_case = 113;
   if (coex_stat->bt_a2dp_exist &&
       !coex_stat->bt_pan_exist)
    tdma_case = 111;
   else if (coex_stat->wl_hi_pri_task1)
    tdma_case = 106;
   else if (!coex_stat->bt_page)
    tdma_case = 108;
   else
    tdma_case = 109;
  } else if (coex_stat->wl_connected) {
   table_case = 101;
   tdma_case = 110;
  } else {
   table_case = 100;
   tdma_case = 100;
  }
 }

 rtw_dbg(rtwdev, RTW_DBG_COEX, "coex: wifi hi(%d), bt page(%d)\n",
  wl_hi_pri, coex_stat->bt_page);

 rtw_coex_set_ant_path(rtwdev, 0, COEX_SET_ANT_2G);
 rtw_coex_set_rf_para(rtwdev, chip->wl_rf_para_rx[0]);
 rtw_coex_table(rtwdev, table_case);
 rtw_coex_tdma(rtwdev, 0, tdma_case);
}
