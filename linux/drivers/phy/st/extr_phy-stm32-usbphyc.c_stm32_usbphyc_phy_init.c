
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_usbphyc_phy {int active; struct stm32_usbphyc* usbphyc; } ;
struct stm32_usbphyc {int dummy; } ;
struct phy {int dummy; } ;


 struct stm32_usbphyc_phy* phy_get_drvdata (struct phy*) ;
 int stm32_usbphyc_pll_enable (struct stm32_usbphyc*) ;

__attribute__((used)) static int stm32_usbphyc_phy_init(struct phy *phy)
{
 struct stm32_usbphyc_phy *usbphyc_phy = phy_get_drvdata(phy);
 struct stm32_usbphyc *usbphyc = usbphyc_phy->usbphyc;
 int ret;

 ret = stm32_usbphyc_pll_enable(usbphyc);
 if (ret)
  return ret;

 usbphyc_phy->active = 1;

 return 0;
}
