
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wahc {int * dti_urb; int usb_dev; int * buf_in_urbs; int dti_buf_size; int * dti_buf; TYPE_1__* usb_iface; struct usb_endpoint_descriptor* dti_epd; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WA_MAX_BUF_IN_URBS ;
 int dev_err (struct device*,char*,int) ;
 int * usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (int *,int ,int ,int *,int ,int ,struct wahc*) ;
 int usb_put_urb (int *) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_submit_urb (int *,int ) ;
 int wa_buf_in_cb ;
 int wa_dti_cb ;

int wa_dti_start(struct wahc *wa)
{
 const struct usb_endpoint_descriptor *dti_epd = wa->dti_epd;
 struct device *dev = &wa->usb_iface->dev;
 int result = -ENOMEM, index;

 if (wa->dti_urb != ((void*)0))
  goto out;

 wa->dti_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (wa->dti_urb == ((void*)0))
  goto error_dti_urb_alloc;
 usb_fill_bulk_urb(
  wa->dti_urb, wa->usb_dev,
  usb_rcvbulkpipe(wa->usb_dev, 0x80 | dti_epd->bEndpointAddress),
  wa->dti_buf, wa->dti_buf_size,
  wa_dti_cb, wa);


 for (index = 0; index < WA_MAX_BUF_IN_URBS; ++index) {
  usb_fill_bulk_urb(
   &(wa->buf_in_urbs[index]), wa->usb_dev,
   usb_rcvbulkpipe(wa->usb_dev,
    0x80 | dti_epd->bEndpointAddress),
   ((void*)0), 0, wa_buf_in_cb, wa);
 }
 result = usb_submit_urb(wa->dti_urb, GFP_KERNEL);
 if (result < 0) {
  dev_err(dev, "DTI Error: Could not submit DTI URB (%d) resetting\n",
   result);
  goto error_dti_urb_submit;
 }
out:
 return 0;

error_dti_urb_submit:
 usb_put_urb(wa->dti_urb);
 wa->dti_urb = ((void*)0);
error_dti_urb_alloc:
 return result;
}
