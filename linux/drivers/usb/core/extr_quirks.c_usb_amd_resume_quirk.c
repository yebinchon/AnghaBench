
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int amd_resume_bug; } ;
struct usb_device {int level; int bus; } ;


 struct usb_hcd* bus_to_hcd (int ) ;

__attribute__((used)) static int usb_amd_resume_quirk(struct usb_device *udev)
{
 struct usb_hcd *hcd;

 hcd = bus_to_hcd(udev->bus);

 if (udev->level == 1 && hcd->amd_resume_bug == 1)
  return 1;

 return 0;
}
