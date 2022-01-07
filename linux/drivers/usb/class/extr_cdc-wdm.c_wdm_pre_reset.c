
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdm_device {int service_outs_intr; int rxwork; int wlock; int rlock; int wait; int iuspin; int rerr; int flags; } ;
struct usb_interface {int dummy; } ;


 int EINTR ;
 int WDM_IN_USE ;
 int WDM_READ ;
 int WDM_RESETTING ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int kill_urbs (struct wdm_device*) ;
 int mutex_lock (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up_all (int *) ;
 struct wdm_device* wdm_find_device (struct usb_interface*) ;

__attribute__((used)) static int wdm_pre_reset(struct usb_interface *intf)
{
 struct wdm_device *desc = wdm_find_device(intf);







 spin_lock_irq(&desc->iuspin);
 set_bit(WDM_RESETTING, &desc->flags);
 set_bit(WDM_READ, &desc->flags);
 clear_bit(WDM_IN_USE, &desc->flags);
 desc->rerr = -EINTR;
 spin_unlock_irq(&desc->iuspin);
 wake_up_all(&desc->wait);
 mutex_lock(&desc->rlock);
 mutex_lock(&desc->wlock);
 kill_urbs(desc);
 cancel_work_sync(&desc->rxwork);
 cancel_work_sync(&desc->service_outs_intr);
 return 0;
}
