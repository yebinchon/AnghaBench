
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_efuse {scalar_t__ share_ant; int rfe_option; } ;
struct rtw_coex_rfe {int ant_switch_exist; int ant_switch_with_bt; int ant_switch_diversity; int wlg_at_btg; scalar_t__ ant_switch_polarity; int rfe_module_type; } ;
struct rtw_coex {struct rtw_coex_rfe rfe; } ;
struct rtw_dev {struct rtw_efuse efuse; struct rtw_coex coex; } ;


 int BIT_LTE_COEX_EN ;
 int MASKLWORD ;
 int rtw_coex_write_indirect_reg (struct rtw_dev*,int,int ,int) ;

__attribute__((used)) static void rtw8822c_coex_cfg_rfe_type(struct rtw_dev *rtwdev)
{
 struct rtw_coex *coex = &rtwdev->coex;
 struct rtw_coex_rfe *coex_rfe = &coex->rfe;
 struct rtw_efuse *efuse = &rtwdev->efuse;

 coex_rfe->rfe_module_type = rtwdev->efuse.rfe_option;
 coex_rfe->ant_switch_polarity = 0;
 coex_rfe->ant_switch_exist = 0;
 coex_rfe->ant_switch_with_bt = 0;
 coex_rfe->ant_switch_diversity = 0;

 if (efuse->share_ant)
  coex_rfe->wlg_at_btg = 1;
 else
  coex_rfe->wlg_at_btg = 0;


 rtw_coex_write_indirect_reg(rtwdev, 0x38, BIT_LTE_COEX_EN, 0x0);
 rtw_coex_write_indirect_reg(rtwdev, 0xa0, MASKLWORD, 0xffff);
 rtw_coex_write_indirect_reg(rtwdev, 0xa4, MASKLWORD, 0xffff);
}
