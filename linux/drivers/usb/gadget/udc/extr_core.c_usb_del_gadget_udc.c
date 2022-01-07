
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; int parent; } ;
struct usb_udc {TYPE_1__ dev; struct usb_gadget_driver* driver; int list; } ;
struct usb_gadget_driver {int pending; } ;
struct usb_gadget {TYPE_1__ dev; int work; struct usb_udc* udc; } ;


 int KOBJ_REMOVE ;
 int dev_vdbg (int ,char*) ;
 int device_unregister (TYPE_1__*) ;
 int flush_work (int *) ;
 int gadget_driver_pending_list ;
 int kobject_uevent (int *,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int memset (TYPE_1__*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int udc_lock ;
 int usb_gadget_remove_driver (struct usb_udc*) ;

void usb_del_gadget_udc(struct usb_gadget *gadget)
{
 struct usb_udc *udc = gadget->udc;

 if (!udc)
  return;

 dev_vdbg(gadget->dev.parent, "unregistering gadget\n");

 mutex_lock(&udc_lock);
 list_del(&udc->list);

 if (udc->driver) {
  struct usb_gadget_driver *driver = udc->driver;

  usb_gadget_remove_driver(udc);
  list_add(&driver->pending, &gadget_driver_pending_list);
 }
 mutex_unlock(&udc_lock);

 kobject_uevent(&udc->dev.kobj, KOBJ_REMOVE);
 flush_work(&gadget->work);
 device_unregister(&udc->dev);
 device_unregister(&gadget->dev);
 memset(&gadget->dev, 0x00, sizeof(gadget->dev));
}
