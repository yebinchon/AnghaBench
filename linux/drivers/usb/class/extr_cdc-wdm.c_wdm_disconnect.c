
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdm_device {int count; int device_list; int rlock; int wlock; int service_outs_intr; int rxwork; int wait; int iuspin; int flags; } ;
struct usb_interface {int dev; } ;


 int WDM_DISCONNECTING ;
 int WDM_READ ;
 int cancel_work_sync (int *) ;
 int cleanup (struct wdm_device*) ;
 int dev_dbg (int *,char*,int ) ;
 int kill_urbs (struct wdm_device*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 int wake_up_all (int *) ;
 int wdm_class ;
 int wdm_device_list_lock ;
 struct wdm_device* wdm_find_device (struct usb_interface*) ;
 int wdm_mutex ;

__attribute__((used)) static void wdm_disconnect(struct usb_interface *intf)
{
 struct wdm_device *desc;
 unsigned long flags;

 usb_deregister_dev(intf, &wdm_class);
 desc = wdm_find_device(intf);
 mutex_lock(&wdm_mutex);


 spin_lock_irqsave(&desc->iuspin, flags);
 set_bit(WDM_DISCONNECTING, &desc->flags);
 set_bit(WDM_READ, &desc->flags);
 spin_unlock_irqrestore(&desc->iuspin, flags);
 wake_up_all(&desc->wait);
 mutex_lock(&desc->rlock);
 mutex_lock(&desc->wlock);
 kill_urbs(desc);
 cancel_work_sync(&desc->rxwork);
 cancel_work_sync(&desc->service_outs_intr);
 mutex_unlock(&desc->wlock);
 mutex_unlock(&desc->rlock);


 spin_lock(&wdm_device_list_lock);
 list_del(&desc->device_list);
 spin_unlock(&wdm_device_list_lock);

 if (!desc->count)
  cleanup(desc);
 else
  dev_dbg(&intf->dev, "%d open files - postponing cleanup\n", desc->count);
 mutex_unlock(&wdm_mutex);
}
