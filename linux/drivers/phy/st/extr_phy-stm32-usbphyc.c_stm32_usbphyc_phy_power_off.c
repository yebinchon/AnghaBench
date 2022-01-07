
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_usbphyc_phy {int supplies; } ;
struct phy {int dummy; } ;


 int NUM_SUPPLIES ;
 struct stm32_usbphyc_phy* phy_get_drvdata (struct phy*) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int stm32_usbphyc_phy_power_off(struct phy *phy)
{
 struct stm32_usbphyc_phy *usbphyc_phy = phy_get_drvdata(phy);

 return regulator_bulk_disable(NUM_SUPPLIES, usbphyc_phy->supplies);
}
