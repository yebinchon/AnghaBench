
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int dummy; } ;
struct device {int dummy; } ;


 int usb_put_phy (struct usb_phy*) ;

__attribute__((used)) static void devm_usb_phy_release(struct device *dev, void *res)
{
 struct usb_phy *phy = *(struct usb_phy **)res;

 usb_put_phy(phy);
}
