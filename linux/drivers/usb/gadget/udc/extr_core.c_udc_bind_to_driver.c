
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * driver; int kobj; } ;
struct usb_udc {TYPE_2__* gadget; TYPE_4__ dev; struct usb_gadget_driver* driver; } ;
struct usb_gadget_driver {int (* bind ) (TYPE_2__*,struct usb_gadget_driver*) ;int function; int (* unbind ) (TYPE_2__*) ;int max_speed; int driver; } ;
struct TYPE_6__ {int * driver; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;


 int EISNAM ;
 int KOBJ_CHANGE ;
 int dev_dbg (TYPE_4__*,char*,int ) ;
 int dev_err (TYPE_4__*,char*,int ,int) ;
 int kobject_uevent (int *,int ) ;
 int stub1 (TYPE_2__*,struct usb_gadget_driver*) ;
 int stub2 (TYPE_2__*) ;
 int usb_gadget_udc_set_speed (struct usb_udc*,int ) ;
 int usb_gadget_udc_start (struct usb_udc*) ;
 int usb_udc_connect_control (struct usb_udc*) ;

__attribute__((used)) static int udc_bind_to_driver(struct usb_udc *udc, struct usb_gadget_driver *driver)
{
 int ret;

 dev_dbg(&udc->dev, "registering UDC driver [%s]\n",
   driver->function);

 udc->driver = driver;
 udc->dev.driver = &driver->driver;
 udc->gadget->dev.driver = &driver->driver;

 usb_gadget_udc_set_speed(udc, driver->max_speed);

 ret = driver->bind(udc->gadget, driver);
 if (ret)
  goto err1;
 ret = usb_gadget_udc_start(udc);
 if (ret) {
  driver->unbind(udc->gadget);
  goto err1;
 }
 usb_udc_connect_control(udc);

 kobject_uevent(&udc->dev.kobj, KOBJ_CHANGE);
 return 0;
err1:
 if (ret != -EISNAM)
  dev_err(&udc->dev, "failed to start %s: %d\n",
   udc->driver->function, ret);
 udc->driver = ((void*)0);
 udc->dev.driver = ((void*)0);
 udc->gadget->dev.driver = ((void*)0);
 return ret;
}
