
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wdm_device {scalar_t__ resp_count; int flags; TYPE_1__* intf; int iuspin; int response; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int WDM_RESPONDING ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*,int) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int service_outstanding_interrupt(struct wdm_device *desc)
{
 int rv = 0;


 if (!desc->resp_count || !--desc->resp_count)
  goto out;

 set_bit(WDM_RESPONDING, &desc->flags);
 spin_unlock_irq(&desc->iuspin);
 rv = usb_submit_urb(desc->response, GFP_KERNEL);
 spin_lock_irq(&desc->iuspin);
 if (rv) {
  dev_err(&desc->intf->dev,
   "usb_submit_urb failed with result %d\n", rv);


  clear_bit(WDM_RESPONDING, &desc->flags);
  desc->resp_count = 0;
 }
out:
 return rv;
}
