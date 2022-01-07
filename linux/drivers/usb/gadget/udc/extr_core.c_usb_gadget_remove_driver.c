
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int * driver; int kobj; } ;
struct usb_udc {TYPE_3__* gadget; TYPE_5__ dev; TYPE_2__* driver; } ;
struct TYPE_6__ {int * driver; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;
struct TYPE_7__ {int (* unbind ) (TYPE_3__*) ;int function; } ;


 int KOBJ_CHANGE ;
 int dev_dbg (TYPE_5__*,char*,int ) ;
 int kobject_uevent (int *,int ) ;
 int stub1 (TYPE_3__*) ;
 int usb_gadget_disconnect (TYPE_3__*) ;
 int usb_gadget_udc_stop (struct usb_udc*) ;

__attribute__((used)) static void usb_gadget_remove_driver(struct usb_udc *udc)
{
 dev_dbg(&udc->dev, "unregistering UDC driver [%s]\n",
   udc->driver->function);

 kobject_uevent(&udc->dev.kobj, KOBJ_CHANGE);

 usb_gadget_disconnect(udc->gadget);
 udc->driver->unbind(udc->gadget);
 usb_gadget_udc_stop(udc);

 udc->driver = ((void*)0);
 udc->dev.driver = ((void*)0);
 udc->gadget->dev.driver = ((void*)0);
}
