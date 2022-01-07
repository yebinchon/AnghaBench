
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_efuse {scalar_t__ share_ant; } ;
struct rtw_dev {struct rtw_chip_info* chip; struct rtw_efuse efuse; } ;
struct rtw_chip_info {int * wl_rf_para_rx; } ;


 int COEX_SCBD_FIX2M ;
 int COEX_SET_ANT_5G ;
 int rtw_coex_set_ant_path (struct rtw_dev*,int,int ) ;
 int rtw_coex_set_rf_para (struct rtw_dev*,int ) ;
 int rtw_coex_table (struct rtw_dev*,int) ;
 int rtw_coex_tdma (struct rtw_dev*,int,int) ;
 int rtw_coex_write_scbd (struct rtw_dev*,int ,int) ;

__attribute__((used)) static void rtw_coex_action_wl_under5g(struct rtw_dev *rtwdev)
{
 struct rtw_efuse *efuse = &rtwdev->efuse;
 struct rtw_chip_info *chip = rtwdev->chip;
 u8 table_case, tdma_case;

 rtw_coex_write_scbd(rtwdev, COEX_SCBD_FIX2M, 0);

 if (efuse->share_ant) {

  table_case = 0;
  tdma_case = 0;
 } else {

  table_case = 100;
  tdma_case = 100;
 }

 rtw_coex_set_ant_path(rtwdev, 1, COEX_SET_ANT_5G);
 rtw_coex_set_rf_para(rtwdev, chip->wl_rf_para_rx[0]);
 rtw_coex_table(rtwdev, table_case);
 rtw_coex_tdma(rtwdev, 0, tdma_case);
}
