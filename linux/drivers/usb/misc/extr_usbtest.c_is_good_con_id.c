
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbtest_dev {int dummy; } ;
struct usb_ss_container_id_descriptor {scalar_t__ bLength; scalar_t__ bReserved; } ;


 int ERROR (struct usbtest_dev*,char*) ;
 scalar_t__ USB_DT_USB_SS_CONTN_ID_SIZE ;

__attribute__((used)) static int is_good_con_id(struct usbtest_dev *tdev, u8 *buf)
{
 struct usb_ss_container_id_descriptor *con_id;

 con_id = (struct usb_ss_container_id_descriptor *) buf;

 if (con_id->bLength != USB_DT_USB_SS_CONTN_ID_SIZE) {
  ERROR(tdev, "bogus container id descriptor length\n");
  return 0;
 }

 if (con_id->bReserved) {
  ERROR(tdev, "reserved bits set\n");
  return 0;
 }

 return 1;
}
