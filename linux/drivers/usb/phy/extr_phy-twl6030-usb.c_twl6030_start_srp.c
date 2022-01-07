
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6030_usb {int dummy; } ;
struct phy_companion {int dummy; } ;


 int TWL_MODULE_USB ;
 int USB_VBUS_CTRL_CLR ;
 int USB_VBUS_CTRL_SET ;
 struct twl6030_usb* comparator_to_twl (struct phy_companion*) ;
 int mdelay (int) ;
 int twl6030_writeb (struct twl6030_usb*,int ,int,int ) ;

__attribute__((used)) static int twl6030_start_srp(struct phy_companion *comparator)
{
 struct twl6030_usb *twl = comparator_to_twl(comparator);

 twl6030_writeb(twl, TWL_MODULE_USB, 0x24, USB_VBUS_CTRL_SET);
 twl6030_writeb(twl, TWL_MODULE_USB, 0x84, USB_VBUS_CTRL_SET);

 mdelay(100);
 twl6030_writeb(twl, TWL_MODULE_USB, 0xa0, USB_VBUS_CTRL_CLR);

 return 0;
}
