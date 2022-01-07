
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_ctrlrequest {int dummy; } ;
struct dwc3 {int lock; int gadget; TYPE_1__* gadget_driver; } ;
struct TYPE_2__ {int (* setup ) (int *,struct usb_ctrlrequest*) ;} ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int *,struct usb_ctrlrequest*) ;

__attribute__((used)) static int dwc3_ep0_delegate_req(struct dwc3 *dwc, struct usb_ctrlrequest *ctrl)
{
 int ret;

 spin_unlock(&dwc->lock);
 ret = dwc->gadget_driver->setup(&dwc->gadget, ctrl);
 spin_lock(&dwc->lock);
 return ret;
}
