
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_usb_phy_data {scalar_t__ base; } ;
struct sun4i_usb_phy {int dummy; } ;
struct phy {int dummy; } ;


 scalar_t__ REG_ISCR ;
 struct sun4i_usb_phy* phy_get_drvdata (struct phy*) ;
 int readl (scalar_t__) ;
 struct sun4i_usb_phy_data* to_sun4i_usb_phy_data (struct sun4i_usb_phy*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sun4i_usb_phy0_update_iscr(struct phy *_phy, u32 clr, u32 set)
{
 struct sun4i_usb_phy *phy = phy_get_drvdata(_phy);
 struct sun4i_usb_phy_data *data = to_sun4i_usb_phy_data(phy);
 u32 iscr;

 iscr = readl(data->base + REG_ISCR);
 iscr &= ~clr;
 iscr |= set;
 writel(iscr, data->base + REG_ISCR);
}
