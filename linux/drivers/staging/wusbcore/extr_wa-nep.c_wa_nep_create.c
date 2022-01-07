
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wahc {int nep_buffer_size; int nep_buffer; int * nep_urb; int nep_edc; } ;
struct device {int dummy; } ;
struct usb_interface {TYPE_2__* cur_altsetting; struct device dev; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct usb_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* endpoint; } ;
struct TYPE_3__ {struct usb_endpoint_descriptor desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*,int) ;
 int edc_init (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (int ) ;
 int kmalloc (int,int ) ;
 int * usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (int *,struct usb_device*,int ,int ,int,int ,struct wahc*,int ) ;
 int usb_free_urb (int *) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int wa_nep_arm (struct wahc*,int ) ;
 int wa_nep_cb ;

int wa_nep_create(struct wahc *wa, struct usb_interface *iface)
{
 int result;
 struct usb_endpoint_descriptor *epd;
 struct usb_device *usb_dev = interface_to_usbdev(iface);
 struct device *dev = &iface->dev;

 edc_init(&wa->nep_edc);
 epd = &iface->cur_altsetting->endpoint[0].desc;
 wa->nep_buffer_size = 1024;
 wa->nep_buffer = kmalloc(wa->nep_buffer_size, GFP_KERNEL);
 if (!wa->nep_buffer)
  goto error_nep_buffer;
 wa->nep_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (wa->nep_urb == ((void*)0))
  goto error_urb_alloc;
 usb_fill_int_urb(wa->nep_urb, usb_dev,
    usb_rcvintpipe(usb_dev, epd->bEndpointAddress),
    wa->nep_buffer, wa->nep_buffer_size,
    wa_nep_cb, wa, epd->bInterval);
 result = wa_nep_arm(wa, GFP_KERNEL);
 if (result < 0) {
  dev_err(dev, "Cannot submit notification URB: %d\n", result);
  goto error_nep_arm;
 }
 return 0;

error_nep_arm:
 usb_free_urb(wa->nep_urb);
error_urb_alloc:
 kfree(wa->nep_buffer);
error_nep_buffer:
 return -ENOMEM;
}
