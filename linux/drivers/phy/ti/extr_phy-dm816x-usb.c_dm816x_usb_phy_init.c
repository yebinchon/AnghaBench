
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct dm816x_usb_phy {int usbphy_ctrl; int syscon; int dev; int usb_ctrl; int refclk; } ;


 unsigned int DM816X_USBPHY_CTRL_TXPREEMTUNE ;
 unsigned int DM816X_USBPHY_CTRL_TXRISETUNE ;
 unsigned int DM816X_USBPHY_CTRL_TXVREFTUNE ;
 int DM816X_USB_CTRL_PHYCLKSRC ;
 int DM816X_USB_CTRL_PHYSLEEP0 ;
 int DM816X_USB_CTRL_PHYSLEEP1 ;
 int clk_get_rate (int ) ;
 int dev_info (int ,char*,unsigned int) ;
 int dev_warn (int ,char*) ;
 struct dm816x_usb_phy* phy_get_drvdata (struct phy*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int ) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int dm816x_usb_phy_init(struct phy *x)
{
 struct dm816x_usb_phy *phy = phy_get_drvdata(x);
 unsigned int val;
 int error;

 if (clk_get_rate(phy->refclk) != 24000000)
  dev_warn(phy->dev, "nonstandard phy refclk\n");


 error = regmap_update_bits(phy->syscon, phy->usb_ctrl,
       DM816X_USB_CTRL_PHYCLKSRC |
       DM816X_USB_CTRL_PHYSLEEP1 |
       DM816X_USB_CTRL_PHYSLEEP0,
       0);
 regmap_read(phy->syscon, phy->usb_ctrl, &val);
 if ((val & 3) != 0)
  dev_info(phy->dev,
    "Working dm816x USB_CTRL! (0x%08x)\n",
    val);






 regmap_read(phy->syscon, phy->usbphy_ctrl, &val);
 val |= DM816X_USBPHY_CTRL_TXRISETUNE |
  DM816X_USBPHY_CTRL_TXVREFTUNE |
  DM816X_USBPHY_CTRL_TXPREEMTUNE;
 regmap_write(phy->syscon, phy->usbphy_ctrl, val);

 return 0;
}
