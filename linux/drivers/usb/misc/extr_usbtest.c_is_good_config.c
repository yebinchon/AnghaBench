
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtest_dev {scalar_t__ buf; } ;
struct usb_config_descriptor {int bDescriptorType; int bLength; int bmAttributes; int wTotalLength; } ;


 int ERROR (struct usbtest_dev*,char*) ;
 int TBUF_SIZE ;


 int le16_to_cpu (int ) ;
 int realworld ;

__attribute__((used)) static int is_good_config(struct usbtest_dev *tdev, int len)
{
 struct usb_config_descriptor *config;

 if (len < sizeof(*config))
  return 0;
 config = (struct usb_config_descriptor *) tdev->buf;

 switch (config->bDescriptorType) {
 case 129:
 case 128:
  if (config->bLength != 9) {
   ERROR(tdev, "bogus config descriptor length\n");
   return 0;
  }

  if (!realworld && !(config->bmAttributes & 0x80)) {
   ERROR(tdev, "high bit of config attributes not set\n");
   return 0;
  }
  if (config->bmAttributes & 0x1f) {
   ERROR(tdev, "reserved config bits set\n");
   return 0;
  }
  break;
 default:
  return 0;
 }

 if (le16_to_cpu(config->wTotalLength) == len)
  return 1;
 if (le16_to_cpu(config->wTotalLength) >= TBUF_SIZE)
  return 1;
 ERROR(tdev, "bogus config descriptor read size\n");
 return 0;
}
