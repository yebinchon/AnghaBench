
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_otg {int usb_phy; } ;
struct omap_usb {TYPE_1__* comparator; } ;
struct TYPE_2__ {int (* set_vbus ) (TYPE_1__*,int) ;} ;


 int ENODEV ;
 struct omap_usb* phy_to_omapusb (int ) ;
 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static int omap_usb_set_vbus(struct usb_otg *otg, bool enabled)
{
 struct omap_usb *phy = phy_to_omapusb(otg->usb_phy);

 if (!phy->comparator)
  return -ENODEV;

 return phy->comparator->set_vbus(phy->comparator, enabled);
}
