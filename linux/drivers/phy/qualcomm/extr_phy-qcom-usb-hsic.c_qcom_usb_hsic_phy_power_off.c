
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_usb_hsic_phy {int phy_clk; int cal_clk; int cal_sleep_clk; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct qcom_usb_hsic_phy* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int qcom_usb_hsic_phy_power_off(struct phy *phy)
{
 struct qcom_usb_hsic_phy *uphy = phy_get_drvdata(phy);

 clk_disable_unprepare(uphy->cal_sleep_clk);
 clk_disable_unprepare(uphy->cal_clk);
 clk_disable_unprepare(uphy->phy_clk);

 return 0;
}
