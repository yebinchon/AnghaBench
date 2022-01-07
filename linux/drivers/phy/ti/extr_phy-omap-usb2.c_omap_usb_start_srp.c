
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_otg {int usb_phy; } ;
struct omap_usb {TYPE_1__* comparator; } ;
struct TYPE_2__ {int (* start_srp ) (TYPE_1__*) ;} ;


 int ENODEV ;
 struct omap_usb* phy_to_omapusb (int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int omap_usb_start_srp(struct usb_otg *otg)
{
 struct omap_usb *phy = phy_to_omapusb(otg->usb_phy);

 if (!phy->comparator)
  return -ENODEV;

 return phy->comparator->start_srp(phy->comparator);
}
