
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usba_udc {int vbus_prev; int suspended; int vbus_mutex; int gadget; TYPE_1__* driver; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* disconnect ) (int *) ;} ;


 int IRQ_HANDLED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int *) ;
 int udelay (int) ;
 int usba_start (struct usba_udc*) ;
 int usba_stop (struct usba_udc*) ;
 int vbus_is_present (struct usba_udc*) ;

__attribute__((used)) static irqreturn_t usba_vbus_irq_thread(int irq, void *devid)
{
 struct usba_udc *udc = devid;
 int vbus;


 udelay(10);

 mutex_lock(&udc->vbus_mutex);

 vbus = vbus_is_present(udc);
 if (vbus != udc->vbus_prev) {
  if (vbus) {
   usba_start(udc);
  } else {
   udc->suspended = 0;
   usba_stop(udc);

   if (udc->driver->disconnect)
    udc->driver->disconnect(&udc->gadget);
  }
  udc->vbus_prev = vbus;
 }

 mutex_unlock(&udc->vbus_mutex);
 return IRQ_HANDLED;
}
