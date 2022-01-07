
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int controller; struct usb_device* root_hub; } ;
struct usb_hcd {scalar_t__ irq; scalar_t__ flags; int phy_roothub; TYPE_2__ self; int rh_timer; int state; TYPE_1__* driver; scalar_t__ rh_pollable; int died_work; int wakeup_work; scalar_t__ rh_registered; } ;
struct usb_device {int dummy; } ;
struct TYPE_3__ {int (* stop ) (struct usb_hcd*) ;} ;


 int HCD_FLAG_POLL_RH ;
 int HCD_FLAG_RH_RUNNING ;
 scalar_t__ HC_IS_RUNNING (int ) ;
 int HC_STATE_HALT ;
 int HC_STATE_QUIESCING ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,scalar_t__*) ;
 int del_timer_sync (int *) ;
 int dev_dbg (int ,char*) ;
 int dev_info (int ,char*,int ) ;
 int free_irq (scalar_t__,struct usb_hcd*) ;
 int hcd_buffer_destroy (struct usb_hcd*) ;
 int hcd_root_hub_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct usb_hcd*) ;
 int usb_bus_idr_lock ;
 int usb_deregister_bus (TYPE_2__*) ;
 int usb_disconnect (struct usb_device**) ;
 int usb_get_dev (struct usb_device*) ;
 scalar_t__ usb_hcd_is_primary_hcd (struct usb_hcd*) ;
 int usb_phy_roothub_exit (int ) ;
 int usb_phy_roothub_power_off (int ) ;
 int usb_put_invalidate_rhdev (struct usb_hcd*) ;

void usb_remove_hcd(struct usb_hcd *hcd)
{
 struct usb_device *rhdev = hcd->self.root_hub;

 dev_info(hcd->self.controller, "remove, state %x\n", hcd->state);

 usb_get_dev(rhdev);
 clear_bit(HCD_FLAG_RH_RUNNING, &hcd->flags);
 if (HC_IS_RUNNING (hcd->state))
  hcd->state = HC_STATE_QUIESCING;

 dev_dbg(hcd->self.controller, "roothub graceful disconnect\n");
 spin_lock_irq (&hcd_root_hub_lock);
 hcd->rh_registered = 0;
 spin_unlock_irq (&hcd_root_hub_lock);




 cancel_work_sync(&hcd->died_work);

 mutex_lock(&usb_bus_idr_lock);
 usb_disconnect(&rhdev);
 mutex_unlock(&usb_bus_idr_lock);
 hcd->rh_pollable = 0;
 clear_bit(HCD_FLAG_POLL_RH, &hcd->flags);
 del_timer_sync(&hcd->rh_timer);

 hcd->driver->stop(hcd);
 hcd->state = HC_STATE_HALT;


 clear_bit(HCD_FLAG_POLL_RH, &hcd->flags);
 del_timer_sync(&hcd->rh_timer);

 if (usb_hcd_is_primary_hcd(hcd)) {
  if (hcd->irq > 0)
   free_irq(hcd->irq, hcd);
 }

 usb_deregister_bus(&hcd->self);
 hcd_buffer_destroy(hcd);

 usb_phy_roothub_power_off(hcd->phy_roothub);
 usb_phy_roothub_exit(hcd->phy_roothub);

 usb_put_invalidate_rhdev(hcd);
 hcd->flags = 0;
}
