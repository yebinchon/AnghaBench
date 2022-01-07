
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_qualifier_descriptor {int dummy; } ;
struct usb_hub {int leds; int * indicator; scalar_t__ has_indicators; } ;
struct usb_device {int quirks; int dev; } ;


 int GFP_KERNEL ;
 int INDICATOR_GREEN_BLINK ;
 int USB_DT_DEVICE_QUALIFIER ;
 int USB_QUIRK_DEVICE_QUALIFIER ;
 int dev_info (int *,char*) ;
 int kfree (struct usb_qualifier_descriptor*) ;
 struct usb_qualifier_descriptor* kmalloc (int,int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_power_efficient_wq ;
 int usb_get_descriptor (struct usb_device*,int ,int ,struct usb_qualifier_descriptor*,int) ;

__attribute__((used)) static void
check_highspeed(struct usb_hub *hub, struct usb_device *udev, int port1)
{
 struct usb_qualifier_descriptor *qual;
 int status;

 if (udev->quirks & USB_QUIRK_DEVICE_QUALIFIER)
  return;

 qual = kmalloc(sizeof *qual, GFP_KERNEL);
 if (qual == ((void*)0))
  return;

 status = usb_get_descriptor(udev, USB_DT_DEVICE_QUALIFIER, 0,
   qual, sizeof *qual);
 if (status == sizeof *qual) {
  dev_info(&udev->dev, "not running at top speed; "
   "connect to a high speed hub\n");

  if (hub->has_indicators) {
   hub->indicator[port1-1] = INDICATOR_GREEN_BLINK;
   queue_delayed_work(system_power_efficient_wq,
     &hub->leds, 0);
  }
 }
 kfree(qual);
}
