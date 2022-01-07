
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device_id {int match_flags; int idVendor; int idProduct; int bcdDevice_lo; int bcdDevice_hi; scalar_t__ bDeviceClass; scalar_t__ bDeviceSubClass; scalar_t__ bDeviceProtocol; } ;
struct TYPE_2__ {scalar_t__ bDeviceClass; scalar_t__ bDeviceSubClass; scalar_t__ bDeviceProtocol; int idProduct; int idVendor; int bcdDevice; } ;
struct usb_device {TYPE_1__ descriptor; int dev; } ;


 int USB_DEVICE_ID_MATCH_DEV_CLASS ;
 int USB_DEVICE_ID_MATCH_DEV_HI ;
 int USB_DEVICE_ID_MATCH_DEV_LO ;
 int USB_DEVICE_ID_MATCH_DEV_PROTOCOL ;
 int USB_DEVICE_ID_MATCH_DEV_SUBCLASS ;
 int USB_DEVICE_ID_MATCH_PRODUCT ;
 int USB_DEVICE_ID_MATCH_VENDOR ;
 int dev_err (int *,char*,int,int) ;
 int le16_to_cpu (int ) ;
 struct usb_device_id* whitelist_table ;

__attribute__((used)) static int is_targeted(struct usb_device *dev)
{
 struct usb_device_id *id = whitelist_table;


 if ((le16_to_cpu(dev->descriptor.idVendor) == 0x1a0a &&
      le16_to_cpu(dev->descriptor.idProduct) == 0xbadd))
  return 0;


 if ((le16_to_cpu(dev->descriptor.idVendor) == 0x1a0a &&
      le16_to_cpu(dev->descriptor.idProduct) == 0x0200))
  return 1;




 for (id = whitelist_table; id->match_flags; id++) {
  if ((id->match_flags & USB_DEVICE_ID_MATCH_VENDOR) &&
      id->idVendor != le16_to_cpu(dev->descriptor.idVendor))
   continue;

  if ((id->match_flags & USB_DEVICE_ID_MATCH_PRODUCT) &&
      id->idProduct != le16_to_cpu(dev->descriptor.idProduct))
   continue;



  if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_LO) &&
      (id->bcdDevice_lo > le16_to_cpu(dev->descriptor.bcdDevice)))
   continue;

  if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_HI) &&
      (id->bcdDevice_hi < le16_to_cpu(dev->descriptor.bcdDevice)))
   continue;

  if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_CLASS) &&
      (id->bDeviceClass != dev->descriptor.bDeviceClass))
   continue;

  if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_SUBCLASS) &&
      (id->bDeviceSubClass != dev->descriptor.bDeviceSubClass))
   continue;

  if ((id->match_flags & USB_DEVICE_ID_MATCH_DEV_PROTOCOL) &&
      (id->bDeviceProtocol != dev->descriptor.bDeviceProtocol))
   continue;

  return 1;
 }





 dev_err(&dev->dev, "device v%04x p%04x is not supported\n",
  le16_to_cpu(dev->descriptor.idVendor),
  le16_to_cpu(dev->descriptor.idProduct));

 return 0;
}
