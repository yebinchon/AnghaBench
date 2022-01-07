
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtw_efuse {int rf_board_option; int regd; int * txpwr_idx_table; int bt_setting; int * country_code; int channel_plan; int crystal_cap; int rfe_option; } ;
struct rtw_dev {struct rtw_efuse efuse; } ;
struct rtw8822c_efuse {int rf_board_option; int * txpwr_idx_table; int rf_bt_setting; int * country_code; int channel_plan; int xtal_k; int rfe_option; } ;


 int ENOTSUPP ;

 int rtw8822ce_efuse_parsing (struct rtw_efuse*,struct rtw8822c_efuse*) ;
 int rtw_hci_type (struct rtw_dev*) ;

__attribute__((used)) static int rtw8822c_read_efuse(struct rtw_dev *rtwdev, u8 *log_map)
{
 struct rtw_efuse *efuse = &rtwdev->efuse;
 struct rtw8822c_efuse *map;
 int i;

 map = (struct rtw8822c_efuse *)log_map;

 efuse->rfe_option = map->rfe_option;
 efuse->rf_board_option = map->rf_board_option;
 efuse->crystal_cap = map->xtal_k;
 efuse->channel_plan = map->channel_plan;
 efuse->country_code[0] = map->country_code[0];
 efuse->country_code[1] = map->country_code[1];
 efuse->bt_setting = map->rf_bt_setting;
 efuse->regd = map->rf_board_option & 0x7;

 for (i = 0; i < 4; i++)
  efuse->txpwr_idx_table[i] = map->txpwr_idx_table[i];

 switch (rtw_hci_type(rtwdev)) {
 case 128:
  rtw8822ce_efuse_parsing(efuse, map);
  break;
 default:

  return -ENOTSUPP;
 }

 return 0;
}
