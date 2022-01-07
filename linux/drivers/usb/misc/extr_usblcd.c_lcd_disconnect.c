
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_lcd {int disconnected; int kref; int submitted; int io_rwsem; } ;
struct usb_interface {int minor; int dev; } ;


 int dev_info (int *,char*,int) ;
 int down_write (int *) ;
 int kref_put (int *,int ) ;
 int lcd_class ;
 int lcd_delete ;
 int up_write (int *) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct usb_lcd* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void lcd_disconnect(struct usb_interface *interface)
{
 struct usb_lcd *dev = usb_get_intfdata(interface);
 int minor = interface->minor;


 usb_deregister_dev(interface, &lcd_class);

 down_write(&dev->io_rwsem);
 dev->disconnected = 1;
 up_write(&dev->io_rwsem);

 usb_kill_anchored_urbs(&dev->submitted);


 kref_put(&dev->kref, lcd_delete);

 dev_info(&interface->dev, "USB LCD #%d now disconnected\n", minor);
}
