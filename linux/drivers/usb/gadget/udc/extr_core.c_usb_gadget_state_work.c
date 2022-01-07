
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {int kobj; } ;
struct usb_udc {TYPE_1__ dev; } ;
struct usb_gadget {struct usb_udc* udc; } ;


 int sysfs_notify (int *,int *,char*) ;
 struct usb_gadget* work_to_gadget (struct work_struct*) ;

__attribute__((used)) static void usb_gadget_state_work(struct work_struct *work)
{
 struct usb_gadget *gadget = work_to_gadget(work);
 struct usb_udc *udc = gadget->udc;

 if (udc)
  sysfs_notify(&udc->dev.kobj, ((void*)0), "state");
}
