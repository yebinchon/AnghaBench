
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void (* release ) (struct device*) ;struct device* parent; int groups; int class; } ;
struct usb_udc {int vbus; TYPE_1__ dev; int list; struct usb_gadget* gadget; } ;
struct usb_gadget {TYPE_1__ dev; struct usb_udc* udc; int work; } ;
struct device {int kobj; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int USB_STATE_NOTATTACHED ;
 int check_pending_gadget_drivers (struct usb_udc*) ;
 int dev_set_name (TYPE_1__*,char*,...) ;
 int device_add (TYPE_1__*) ;
 int device_del (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int kobject_name (int *) ;
 struct usb_udc* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (TYPE_1__*) ;
 int udc_class ;
 int udc_list ;
 int udc_lock ;
 int usb_gadget_set_state (struct usb_gadget*,int ) ;
 int usb_gadget_state_work ;
 int usb_udc_attr_groups ;
 void usb_udc_nop_release (struct device*) ;
 void usb_udc_release (struct device*) ;

int usb_add_gadget_udc_release(struct device *parent, struct usb_gadget *gadget,
  void (*release)(struct device *dev))
{
 struct usb_udc *udc;
 int ret = -ENOMEM;

 dev_set_name(&gadget->dev, "gadget");
 INIT_WORK(&gadget->work, usb_gadget_state_work);
 gadget->dev.parent = parent;

 if (release)
  gadget->dev.release = release;
 else
  gadget->dev.release = usb_udc_nop_release;

 device_initialize(&gadget->dev);

 udc = kzalloc(sizeof(*udc), GFP_KERNEL);
 if (!udc)
  goto err_put_gadget;

 device_initialize(&udc->dev);
 udc->dev.release = usb_udc_release;
 udc->dev.class = udc_class;
 udc->dev.groups = usb_udc_attr_groups;
 udc->dev.parent = parent;
 ret = dev_set_name(&udc->dev, "%s", kobject_name(&parent->kobj));
 if (ret)
  goto err_put_udc;

 ret = device_add(&gadget->dev);
 if (ret)
  goto err_put_udc;

 udc->gadget = gadget;
 gadget->udc = udc;

 mutex_lock(&udc_lock);
 list_add_tail(&udc->list, &udc_list);

 ret = device_add(&udc->dev);
 if (ret)
  goto err_unlist_udc;

 usb_gadget_set_state(gadget, USB_STATE_NOTATTACHED);
 udc->vbus = 1;


 ret = check_pending_gadget_drivers(udc);
 if (ret)
  goto err_del_udc;

 mutex_unlock(&udc_lock);

 return 0;

 err_del_udc:
 device_del(&udc->dev);

 err_unlist_udc:
 list_del(&udc->list);
 mutex_unlock(&udc_lock);

 device_del(&gadget->dev);

 err_put_udc:
 put_device(&udc->dev);

 err_put_gadget:
 put_device(&gadget->dev);
 return ret;
}
