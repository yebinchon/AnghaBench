
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbtest_dev {int dummy; } ;
struct usb_ss_cap_descriptor {scalar_t__ bLength; int bmAttributes; int wSpeedSupported; } ;


 int ERROR (struct usbtest_dev*,char*) ;
 scalar_t__ USB_DT_USB_SS_CAP_SIZE ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int is_good_ss_cap(struct usbtest_dev *tdev, u8 *buf)
{
 struct usb_ss_cap_descriptor *ss;

 ss = (struct usb_ss_cap_descriptor *) buf;

 if (ss->bLength != USB_DT_USB_SS_CAP_SIZE) {
  ERROR(tdev, "bogus superspeed device capability descriptor length\n");
  return 0;
 }





 if (ss->bmAttributes & ~0x02) {
  ERROR(tdev, "reserved bits set in bmAttributes\n");
  return 0;
 }


 if (le16_to_cpu(ss->wSpeedSupported) & ~0x0f) {
  ERROR(tdev, "reserved bits set in wSpeedSupported\n");
  return 0;
 }

 return 1;
}
