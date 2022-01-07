
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_phy {int dev; } ;
struct keystone_usbphy {int phy_ctrl; } ;


 int PHY_REF_SSP_EN ;
 int USB_PHY_CTL_CLOCK ;
 struct keystone_usbphy* dev_get_drvdata (int ) ;
 int keystone_usbphy_readl (int ,int ) ;
 int keystone_usbphy_writel (int ,int ,int) ;

__attribute__((used)) static int keystone_usbphy_init(struct usb_phy *phy)
{
 struct keystone_usbphy *k_phy = dev_get_drvdata(phy->dev);
 u32 val;

 val = keystone_usbphy_readl(k_phy->phy_ctrl, USB_PHY_CTL_CLOCK);
 keystone_usbphy_writel(k_phy->phy_ctrl, USB_PHY_CTL_CLOCK,
    val | PHY_REF_SSP_EN);
 return 0;
}
