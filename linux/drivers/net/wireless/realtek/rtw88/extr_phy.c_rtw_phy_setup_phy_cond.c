
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtw_phy_cond {int cut; int pkg; int plat; int intf; int rfe; int member_0; } ;
struct rtw_hal {int cut_version; struct rtw_phy_cond phy_cond; } ;
struct rtw_efuse {int rfe_option; } ;
struct rtw_dev {struct rtw_efuse efuse; struct rtw_hal hal; } ;


 int INTF_PCIE ;
 int INTF_SDIO ;
 int INTF_USB ;
 int RTW_DBG_PHY ;



 int rtw_dbg (struct rtw_dev*,int ,char*,int) ;
 int rtw_hci_type (struct rtw_dev*) ;

void rtw_phy_setup_phy_cond(struct rtw_dev *rtwdev, u32 pkg)
{
 struct rtw_hal *hal = &rtwdev->hal;
 struct rtw_efuse *efuse = &rtwdev->efuse;
 struct rtw_phy_cond cond = {0};

 cond.cut = hal->cut_version ? hal->cut_version : 15;
 cond.pkg = pkg ? pkg : 15;
 cond.plat = 0x04;
 cond.rfe = efuse->rfe_option;

 switch (rtw_hci_type(rtwdev)) {
 case 128:
  cond.intf = INTF_USB;
  break;
 case 129:
  cond.intf = INTF_SDIO;
  break;
 case 130:
 default:
  cond.intf = INTF_PCIE;
  break;
 }

 hal->phy_cond = cond;

 rtw_dbg(rtwdev, RTW_DBG_PHY, "phy cond=0x%08x\n", *((u32 *)&hal->phy_cond));
}
