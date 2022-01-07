
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_usb_phy {scalar_t__ reset; } ;
struct phy {int dummy; } ;


 struct rockchip_usb_phy* phy_get_drvdata (struct phy*) ;
 int reset_control_assert (scalar_t__) ;
 int reset_control_deassert (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int rockchip_usb_phy_reset(struct phy *_phy)
{
 struct rockchip_usb_phy *phy = phy_get_drvdata(_phy);

 if (phy->reset) {
  reset_control_assert(phy->reset);
  udelay(10);
  reset_control_deassert(phy->reset);
 }

 return 0;
}
