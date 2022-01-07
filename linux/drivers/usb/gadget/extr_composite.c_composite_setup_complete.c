
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {scalar_t__ actual; scalar_t__ length; struct usb_composite_dev* context; scalar_t__ status; } ;
struct usb_ep {scalar_t__ driver_data; } ;
struct usb_composite_dev {int setup_pending; int os_desc_pending; struct usb_request* os_desc_req; struct usb_request* req; } ;


 int DBG (struct usb_composite_dev*,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int WARN (int,char*,struct usb_request*) ;

__attribute__((used)) static void composite_setup_complete(struct usb_ep *ep, struct usb_request *req)
{
 struct usb_composite_dev *cdev;

 if (req->status || req->actual != req->length)
  DBG((struct usb_composite_dev *) ep->driver_data,
    "setup complete --> %d, %d/%d\n",
    req->status, req->actual, req->length);
 if (!req->context)
  return;

 cdev = req->context;

 if (cdev->req == req)
  cdev->setup_pending = 0;
 else if (cdev->os_desc_req == req)
  cdev->os_desc_pending = 0;
 else
  WARN(1, "unknown request %p\n", req);
}
