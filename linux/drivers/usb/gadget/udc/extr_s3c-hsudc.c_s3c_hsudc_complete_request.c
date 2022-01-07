
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct s3c_hsudc_req {TYPE_1__ req; int queue; } ;
struct s3c_hsudc_ep {unsigned int stopped; int ep; int bEndpointAddress; struct s3c_hsudc* dev; } ;
struct s3c_hsudc {int lock; int ep0state; } ;


 int USB_DIR_IN ;
 int WAIT_FOR_SETUP ;
 int ep_index (struct s3c_hsudc_ep*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_gadget_giveback_request (int *,TYPE_1__*) ;

__attribute__((used)) static void s3c_hsudc_complete_request(struct s3c_hsudc_ep *hsep,
    struct s3c_hsudc_req *hsreq, int status)
{
 unsigned int stopped = hsep->stopped;
 struct s3c_hsudc *hsudc = hsep->dev;

 list_del_init(&hsreq->queue);
 hsreq->req.status = status;

 if (!ep_index(hsep)) {
  hsudc->ep0state = WAIT_FOR_SETUP;
  hsep->bEndpointAddress &= ~USB_DIR_IN;
 }

 hsep->stopped = 1;
 spin_unlock(&hsudc->lock);
 usb_gadget_giveback_request(&hsep->ep, &hsreq->req);
 spin_lock(&hsudc->lock);
 hsep->stopped = stopped;
}
