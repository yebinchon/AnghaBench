
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_usb_phy_data {scalar_t__ base; } ;


 int OTGCTL_ROUTE_MUSB ;
 scalar_t__ REG_PHY_OTGCTL ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sun4i_usb_phy0_reroute(struct sun4i_usb_phy_data *data, int id_det)
{
 u32 regval;

 regval = readl(data->base + REG_PHY_OTGCTL);
 if (id_det == 0) {

  regval &= ~OTGCTL_ROUTE_MUSB;
 } else {

  regval |= OTGCTL_ROUTE_MUSB;
 }
 writel(regval, data->base + REG_PHY_OTGCTL);
}
