
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct usb_device {TYPE_2__* parent; } ;
struct TYPE_3__ {int change_speed_quirk; } ;
struct dwc2_hsotg {int dev; TYPE_1__ params; } ;
struct TYPE_4__ {scalar_t__ speed; } ;


 int HPRT0_SPD_HIGH_SPEED ;
 scalar_t__ USB_SPEED_HIGH ;
 scalar_t__ USB_SPEED_UNKNOWN ;
 int dev_info (int ,char*) ;
 int dwc2_change_bus_speed (struct usb_hcd*,int ) ;
 struct dwc2_hsotg* dwc2_hcd_to_hsotg (struct usb_hcd*) ;

__attribute__((used)) static void dwc2_free_dev(struct usb_hcd *hcd, struct usb_device *udev)
{
 struct dwc2_hsotg *hsotg = dwc2_hcd_to_hsotg(hcd);

 if (!hsotg->params.change_speed_quirk)
  return;




 if (udev->parent && udev->parent->speed > USB_SPEED_UNKNOWN &&
     udev->parent->speed < USB_SPEED_HIGH) {
  dev_info(hsotg->dev, "Set speed to default high-speed\n");
  dwc2_change_bus_speed(hcd, HPRT0_SPD_HIGH_SPEED);
 }
}
