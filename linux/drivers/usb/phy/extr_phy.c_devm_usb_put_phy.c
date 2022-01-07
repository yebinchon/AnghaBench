
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int dummy; } ;
struct device {int dummy; } ;


 int dev_WARN_ONCE (struct device*,int,char*) ;
 int devm_usb_phy_match ;
 int devm_usb_phy_release ;
 int devres_destroy (struct device*,int ,int ,struct usb_phy*) ;

void devm_usb_put_phy(struct device *dev, struct usb_phy *phy)
{
 int r;

 r = devres_destroy(dev, devm_usb_phy_release, devm_usb_phy_match, phy);
 dev_WARN_ONCE(dev, r, "couldn't find PHY resource\n");
}
