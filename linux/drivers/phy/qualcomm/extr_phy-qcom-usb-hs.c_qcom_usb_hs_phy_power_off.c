
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_usb_hs_phy {int ref_clk; int sleep_clk; int v1p8; int v3p3; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct qcom_usb_hs_phy* phy_get_drvdata (struct phy*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int qcom_usb_hs_phy_power_off(struct phy *phy)
{
 struct qcom_usb_hs_phy *uphy = phy_get_drvdata(phy);

 regulator_disable(uphy->v3p3);
 regulator_disable(uphy->v1p8);
 clk_disable_unprepare(uphy->sleep_clk);
 clk_disable_unprepare(uphy->ref_clk);

 return 0;
}
