
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int actual; int length; } ;
struct renesas_usb3_request {TYPE_1__ req; int queue; } ;
struct renesas_usb3_ep {int started; int ep; int num; } ;
struct renesas_usb3 {int lock; } ;


 int dev_dbg (int ,char*,int ,int ,int ,int) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct renesas_usb3* usb3_ep_to_usb3 (struct renesas_usb3_ep*) ;
 int usb3_to_dev (struct renesas_usb3*) ;
 int usb_gadget_giveback_request (int *,TYPE_1__*) ;

__attribute__((used)) static void __usb3_request_done(struct renesas_usb3_ep *usb3_ep,
    struct renesas_usb3_request *usb3_req,
    int status)
{
 struct renesas_usb3 *usb3 = usb3_ep_to_usb3(usb3_ep);

 dev_dbg(usb3_to_dev(usb3), "giveback: ep%2d, %u, %u, %d\n",
  usb3_ep->num, usb3_req->req.length, usb3_req->req.actual,
  status);
 usb3_req->req.status = status;
 usb3_ep->started = 0;
 list_del_init(&usb3_req->queue);
 spin_unlock(&usb3->lock);
 usb_gadget_giveback_request(&usb3_ep->ep, &usb3_req->req);
 spin_lock(&usb3->lock);
}
