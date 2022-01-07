
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_rfe_def {int txpwr_lmt_tbl; int phy_pg_tbl; } ;
struct rtw_hal {int dummy; } ;
struct rtw_dev {struct rtw_hal hal; } ;


 int ENODEV ;
 struct rtw_rfe_def* rtw_get_rfe_def (struct rtw_dev*) ;
 int rtw_load_table (struct rtw_dev*,int ) ;
 int rtw_phy_init_tx_power (struct rtw_dev*) ;
 int rtw_phy_setup_phy_cond (struct rtw_dev*,int ) ;
 int rtw_phy_tx_power_by_rate_config (struct rtw_hal*) ;
 int rtw_phy_tx_power_limit_config (struct rtw_hal*) ;

__attribute__((used)) static int rtw_chip_board_info_setup(struct rtw_dev *rtwdev)
{
 struct rtw_hal *hal = &rtwdev->hal;
 const struct rtw_rfe_def *rfe_def = rtw_get_rfe_def(rtwdev);

 if (!rfe_def)
  return -ENODEV;

 rtw_phy_setup_phy_cond(rtwdev, 0);

 rtw_phy_init_tx_power(rtwdev);
 rtw_load_table(rtwdev, rfe_def->phy_pg_tbl);
 rtw_load_table(rtwdev, rfe_def->txpwr_lmt_tbl);
 rtw_phy_tx_power_by_rate_config(hal);
 rtw_phy_tx_power_limit_config(hal);

 return 0;
}
