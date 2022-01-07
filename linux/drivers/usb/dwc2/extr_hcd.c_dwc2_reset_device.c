
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_hcd {int dummy; } ;
struct usb_device {scalar_t__ speed; } ;
struct TYPE_2__ {int change_speed_quirk; } ;
struct dwc2_hsotg {int dev; TYPE_1__ params; } ;


 int HPRT0_SPD_FULL_SPEED ;
 int HPRT0_SPD_HIGH_SPEED ;
 scalar_t__ USB_SPEED_FULL ;
 scalar_t__ USB_SPEED_HIGH ;
 scalar_t__ USB_SPEED_LOW ;
 int dev_info (int ,char*) ;
 int dwc2_change_bus_speed (struct usb_hcd*,int ) ;
 struct dwc2_hsotg* dwc2_hcd_to_hsotg (struct usb_hcd*) ;

__attribute__((used)) static int dwc2_reset_device(struct usb_hcd *hcd, struct usb_device *udev)
{
 struct dwc2_hsotg *hsotg = dwc2_hcd_to_hsotg(hcd);

 if (!hsotg->params.change_speed_quirk)
  return 0;

 if (udev->speed == USB_SPEED_HIGH) {
  dev_info(hsotg->dev, "Set speed to high-speed\n");
  dwc2_change_bus_speed(hcd, HPRT0_SPD_HIGH_SPEED);
 } else if ((udev->speed == USB_SPEED_FULL ||
    udev->speed == USB_SPEED_LOW)) {




  dev_info(hsotg->dev, "Set speed to full-speed\n");
  dwc2_change_bus_speed(hcd, HPRT0_SPD_FULL_SPEED);
 }

 return 0;
}
