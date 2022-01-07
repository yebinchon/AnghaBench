
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct port100 {int cmd; int udev; int out_urb; int in_urb; int nfc_digital_dev; } ;


 int kfree (int ) ;
 int nfc_digital_free_device (int ) ;
 int nfc_digital_unregister_device (int ) ;
 int nfc_info (int *,char*) ;
 int usb_free_urb (int ) ;
 struct port100* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void port100_disconnect(struct usb_interface *interface)
{
 struct port100 *dev;

 dev = usb_get_intfdata(interface);
 usb_set_intfdata(interface, ((void*)0));

 nfc_digital_unregister_device(dev->nfc_digital_dev);
 nfc_digital_free_device(dev->nfc_digital_dev);

 usb_kill_urb(dev->in_urb);
 usb_kill_urb(dev->out_urb);

 usb_free_urb(dev->in_urb);
 usb_free_urb(dev->out_urb);
 usb_put_dev(dev->udev);

 kfree(dev->cmd);

 nfc_info(&interface->dev, "Sony Port-100 NFC device disconnected\n");
}
