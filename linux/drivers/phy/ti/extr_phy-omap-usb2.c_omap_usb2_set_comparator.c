
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_phy {int dummy; } ;
struct phy_companion {int dummy; } ;
struct omap_usb {struct phy_companion* comparator; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct usb_phy*) ;
 int USB_PHY_TYPE_USB2 ;
 struct omap_usb* phy_to_omapusb (struct usb_phy*) ;
 struct usb_phy* usb_get_phy (int ) ;

int omap_usb2_set_comparator(struct phy_companion *comparator)
{
 struct omap_usb *phy;
 struct usb_phy *x = usb_get_phy(USB_PHY_TYPE_USB2);

 if (IS_ERR(x))
  return -ENODEV;

 phy = phy_to_omapusb(x);
 phy->comparator = comparator;
 return 0;
}
