
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_request {int status; } ;
struct usb_ep {scalar_t__ driver_data; } ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct f_hidg {int write_queue; int write_spinlock; scalar_t__ write_pending; TYPE_2__ func; } ;
struct TYPE_3__ {int cdev; } ;


 int ERROR (int ,char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void f_hidg_req_complete(struct usb_ep *ep, struct usb_request *req)
{
 struct f_hidg *hidg = (struct f_hidg *)ep->driver_data;
 unsigned long flags;

 if (req->status != 0) {
  ERROR(hidg->func.config->cdev,
   "End Point Request ERROR: %d\n", req->status);
 }

 spin_lock_irqsave(&hidg->write_spinlock, flags);
 hidg->write_pending = 0;
 spin_unlock_irqrestore(&hidg->write_spinlock, flags);
 wake_up(&hidg->write_queue);
}
