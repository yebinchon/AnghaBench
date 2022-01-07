
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct dvobj_priv {int NumInterfaces; int InterfaceNumber; int usb_vendor_req_mutex; } ;
struct TYPE_4__ {scalar_t__ state; } ;


 scalar_t__ USB_STATE_NOTATTACHED ;
 TYPE_1__* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct dvobj_priv*) ;
 int mutex_destroy (int *) ;
 int pr_debug (char*) ;
 struct dvobj_priv* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (TYPE_1__*) ;
 int usb_reset_device (TYPE_1__*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void usb_dvobj_deinit(struct usb_interface *usb_intf)
{
 struct dvobj_priv *dvobj = usb_get_intfdata(usb_intf);

 usb_set_intfdata(usb_intf, ((void*)0));
 if (dvobj) {

  if ((dvobj->NumInterfaces != 2 &&
      dvobj->NumInterfaces != 3) ||
      (dvobj->InterfaceNumber == 1)) {
   if (interface_to_usbdev(usb_intf)->state !=
       USB_STATE_NOTATTACHED) {





    pr_debug("usb attached..., try to reset usb device\n");
    usb_reset_device(interface_to_usbdev(usb_intf));
   }
  }

  mutex_destroy(&dvobj->usb_vendor_req_mutex);
  kfree(dvobj);
 }

 usb_put_dev(interface_to_usbdev(usb_intf));
}
