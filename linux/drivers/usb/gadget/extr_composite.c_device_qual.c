
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_qualifier_descriptor {int bLength; scalar_t__ bRESERVED; int bNumConfigurations; int bMaxPacketSize0; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int bcdUSB; int bDescriptorType; } ;
struct TYPE_6__ {int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int bcdUSB; } ;
struct usb_composite_dev {TYPE_4__* gadget; TYPE_2__ desc; TYPE_1__* req; } ;
struct TYPE_8__ {TYPE_3__* ep0; } ;
struct TYPE_7__ {int maxpacket; } ;
struct TYPE_5__ {struct usb_qualifier_descriptor* buf; } ;


 int USB_DT_DEVICE_QUALIFIER ;
 int count_configs (struct usb_composite_dev*,int ) ;

__attribute__((used)) static void device_qual(struct usb_composite_dev *cdev)
{
 struct usb_qualifier_descriptor *qual = cdev->req->buf;

 qual->bLength = sizeof(*qual);
 qual->bDescriptorType = USB_DT_DEVICE_QUALIFIER;

 qual->bcdUSB = cdev->desc.bcdUSB;
 qual->bDeviceClass = cdev->desc.bDeviceClass;
 qual->bDeviceSubClass = cdev->desc.bDeviceSubClass;
 qual->bDeviceProtocol = cdev->desc.bDeviceProtocol;

 qual->bMaxPacketSize0 = cdev->gadget->ep0->maxpacket;
 qual->bNumConfigurations = count_configs(cdev, USB_DT_DEVICE_QUALIFIER);
 qual->bRESERVED = 0;
}
