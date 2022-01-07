
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct usb_request {int length; int zero; int complete; int buf; } ;
struct usb_gadget {TYPE_2__* ep0; } ;
struct usb_ctrlrequest {scalar_t__ bRequest; int wLength; int wValue; } ;
struct TYPE_8__ {TYPE_1__* gadget; int serial; struct usb_request* req; } ;
struct TYPE_7__ {int bMaxPacketSize0; } ;
struct TYPE_6__ {int maxpacket; } ;
struct TYPE_5__ {int dev; } ;


 int EOPNOTSUPP ;
 int GFP_ATOMIC ;
 int USB_DEVICE_DEBUG_MODE ;


 scalar_t__ USB_REQ_GET_DESCRIPTOR ;
 scalar_t__ USB_REQ_SET_FEATURE ;
 int dbg_desc ;
 TYPE_4__ dbgp ;
 int dbgp_configure_endpoints (struct usb_gadget*) ;
 int dbgp_enable_ep () ;
 int dbgp_setup_complete ;
 int dev_dbg (int *,char*,...) ;
 TYPE_3__ device_desc ;
 int gserial_connect (int ,int ) ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,void*,int) ;
 int min (int,int) ;
 int tty_line ;
 int usb_ep_queue (TYPE_2__*,struct usb_request*,int ) ;

__attribute__((used)) static int dbgp_setup(struct usb_gadget *gadget,
        const struct usb_ctrlrequest *ctrl)
{
 struct usb_request *req = dbgp.req;
 u8 request = ctrl->bRequest;
 u16 value = le16_to_cpu(ctrl->wValue);
 u16 length = le16_to_cpu(ctrl->wLength);
 int err = -EOPNOTSUPP;
 void *data = ((void*)0);
 u16 len = 0;

 if (request == USB_REQ_GET_DESCRIPTOR) {
  switch (value>>8) {
  case 128:
   dev_dbg(&dbgp.gadget->dev, "setup: desc device\n");
   len = sizeof device_desc;
   data = &device_desc;
   device_desc.bMaxPacketSize0 = gadget->ep0->maxpacket;
   break;
  case 129:
   dev_dbg(&dbgp.gadget->dev, "setup: desc debug\n");
   len = sizeof dbg_desc;
   data = &dbg_desc;
   break;
  default:
   goto fail;
  }
  err = 0;
 } else if (request == USB_REQ_SET_FEATURE &&
     value == USB_DEVICE_DEBUG_MODE) {
  dev_dbg(&dbgp.gadget->dev, "setup: feat debug\n");



  err = dbgp_configure_endpoints(gadget);
  if (err < 0) {
   goto fail;
  }
  err = gserial_connect(dbgp.serial, tty_line);

  if (err < 0)
   goto fail;
 } else
  goto fail;

 req->length = min(length, len);
 req->zero = len < req->length;
 if (data && req->length)
  memcpy(req->buf, data, req->length);

 req->complete = dbgp_setup_complete;
 return usb_ep_queue(gadget->ep0, req, GFP_ATOMIC);

fail:
 dev_dbg(&dbgp.gadget->dev,
  "setup: failure req %x v %x\n", request, value);
 return err;
}
