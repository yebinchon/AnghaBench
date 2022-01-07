
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_usb_phy {int dummy; } ;
struct phy {int dummy; } ;


 int PHY_SQUELCH_DETECT ;
 struct sun4i_usb_phy* phy_get_drvdata (struct phy*) ;
 int sun4i_usb_phy_write (struct sun4i_usb_phy*,int ,int,int) ;

void sun4i_usb_phy_set_squelch_detect(struct phy *_phy, bool enabled)
{
 struct sun4i_usb_phy *phy = phy_get_drvdata(_phy);

 sun4i_usb_phy_write(phy, PHY_SQUELCH_DETECT, enabled ? 0 : 2, 2);
}
