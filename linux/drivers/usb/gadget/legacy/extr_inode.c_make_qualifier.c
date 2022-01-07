
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_qualifier_descriptor {int bLength; int bNumConfigurations; scalar_t__ bRESERVED; int bMaxPacketSize0; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int bcdUSB; int bDescriptorType; } ;
struct usb_device_descriptor {int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; } ;
struct dev_data {int rbuf; TYPE_2__* gadget; struct usb_device_descriptor* dev; } ;
struct TYPE_4__ {TYPE_1__* ep0; } ;
struct TYPE_3__ {int maxpacket; } ;


 int USB_DT_DEVICE_QUALIFIER ;
 int cpu_to_le16 (int) ;
 int memcpy (int ,struct usb_qualifier_descriptor*,int) ;

__attribute__((used)) static void make_qualifier (struct dev_data *dev)
{
 struct usb_qualifier_descriptor qual;
 struct usb_device_descriptor *desc;

 qual.bLength = sizeof qual;
 qual.bDescriptorType = USB_DT_DEVICE_QUALIFIER;
 qual.bcdUSB = cpu_to_le16 (0x0200);

 desc = dev->dev;
 qual.bDeviceClass = desc->bDeviceClass;
 qual.bDeviceSubClass = desc->bDeviceSubClass;
 qual.bDeviceProtocol = desc->bDeviceProtocol;


 qual.bMaxPacketSize0 = dev->gadget->ep0->maxpacket;

 qual.bNumConfigurations = 1;
 qual.bRESERVED = 0;

 memcpy (dev->rbuf, &qual, sizeof qual);
}
