
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_otg {int usb_phy; } ;
struct usb_bus {int dummy; } ;
struct TYPE_4__ {TYPE_1__* otg; } ;
struct ab8500_usb {scalar_t__ mode; int phy_dis_work; TYPE_2__ phy; } ;
struct TYPE_3__ {struct usb_bus* host; } ;


 int ENODEV ;
 scalar_t__ USB_IDLE ;
 struct ab8500_usb* phy_to_ab (int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static int ab8500_usb_set_host(struct usb_otg *otg, struct usb_bus *host)
{
 struct ab8500_usb *ab;

 if (!otg)
  return -ENODEV;

 ab = phy_to_ab(otg->usb_phy);

 ab->phy.otg->host = host;






 if ((ab->mode != USB_IDLE) && !host) {
  ab->mode = USB_IDLE;
  schedule_work(&ab->phy_dis_work);
 }

 return 0;
}
