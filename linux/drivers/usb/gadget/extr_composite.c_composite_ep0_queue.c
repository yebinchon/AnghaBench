
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int dummy; } ;
struct usb_composite_dev {int setup_pending; int os_desc_pending; struct usb_request* os_desc_req; struct usb_request* req; TYPE_1__* gadget; } ;
typedef int gfp_t ;
struct TYPE_2__ {int ep0; } ;


 int WARN (int,char*,struct usb_request*) ;
 int usb_ep_queue (int ,struct usb_request*,int ) ;

__attribute__((used)) static int composite_ep0_queue(struct usb_composite_dev *cdev,
  struct usb_request *req, gfp_t gfp_flags)
{
 int ret;

 ret = usb_ep_queue(cdev->gadget->ep0, req, gfp_flags);
 if (ret == 0) {
  if (cdev->req == req)
   cdev->setup_pending = 1;
  else if (cdev->os_desc_req == req)
   cdev->os_desc_pending = 1;
  else
   WARN(1, "unknown request %p\n", req);
 }

 return ret;
}
