
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_gadget_driver {int dummy; } ;
struct usb_gadget {int dev; int ep0; } ;
struct gserial {int dummy; } ;
struct TYPE_4__ {struct usb_gadget* gadget; int serial; TYPE_1__* req; } ;
struct TYPE_3__ {int length; int buf; } ;


 int DBGP_REQ_EP0_LEN ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__ dbgp ;
 int dbgp_configure_endpoints (struct usb_gadget*) ;
 int dbgp_unbind (struct usb_gadget*) ;
 int dev_dbg (int *,char*,...) ;
 scalar_t__ gserial_alloc_line (int *) ;
 int kmalloc (int ,int ) ;
 int kzalloc (int,int ) ;
 int tty_line ;
 TYPE_1__* usb_ep_alloc_request (int ,int ) ;

__attribute__((used)) static int dbgp_bind(struct usb_gadget *gadget,
  struct usb_gadget_driver *driver)
{
 int err, stp;

 dbgp.gadget = gadget;

 dbgp.req = usb_ep_alloc_request(gadget->ep0, GFP_KERNEL);
 if (!dbgp.req) {
  err = -ENOMEM;
  stp = 1;
  goto fail;
 }

 dbgp.req->buf = kmalloc(DBGP_REQ_EP0_LEN, GFP_KERNEL);
 if (!dbgp.req->buf) {
  err = -ENOMEM;
  stp = 2;
  goto fail;
 }

 dbgp.req->length = DBGP_REQ_EP0_LEN;
 err = dbgp_configure_endpoints(gadget);
 if (err < 0) {
  stp = 5;
  goto fail;
 }

 dev_dbg(&dbgp.gadget->dev, "bind: success\n");
 return 0;

fail:
 dev_dbg(&gadget->dev, "bind: failure (%d:%d)\n", stp, err);
 dbgp_unbind(gadget);
 return err;
}
