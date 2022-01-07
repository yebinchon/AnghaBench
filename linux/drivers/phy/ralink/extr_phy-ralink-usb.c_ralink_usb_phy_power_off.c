
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ralink_usb_phy {int rsthost; int rstdev; int clk; int sysctl; } ;
struct phy {int dummy; } ;


 int RT_SYSC_REG_CLKCFG1 ;
 struct ralink_usb_phy* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int ralink_usb_phy_power_off(struct phy *_phy)
{
 struct ralink_usb_phy *phy = phy_get_drvdata(_phy);


 regmap_update_bits(phy->sysctl, RT_SYSC_REG_CLKCFG1,
      phy->clk, 0);


 reset_control_assert(phy->rstdev);
 reset_control_assert(phy->rsthost);

 return 0;
}
