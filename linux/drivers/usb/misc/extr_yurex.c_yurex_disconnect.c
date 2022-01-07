
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_yurex {int disconnected; int kref; int waitq; int async_queue; int io_mutex; int cntl_urb; int urb; } ;
struct usb_interface {int minor; int dev; } ;


 int POLL_IN ;
 int SIGIO ;
 int dev_info (int *,char*,int) ;
 int kill_fasync (int *,int ,int ) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct usb_yurex* usb_get_intfdata (struct usb_interface*) ;
 int usb_poison_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int wake_up_interruptible (int *) ;
 int yurex_class ;
 int yurex_delete ;

__attribute__((used)) static void yurex_disconnect(struct usb_interface *interface)
{
 struct usb_yurex *dev;
 int minor = interface->minor;

 dev = usb_get_intfdata(interface);
 usb_set_intfdata(interface, ((void*)0));


 usb_deregister_dev(interface, &yurex_class);


 usb_poison_urb(dev->urb);
 usb_poison_urb(dev->cntl_urb);
 mutex_lock(&dev->io_mutex);
 dev->disconnected = 1;
 mutex_unlock(&dev->io_mutex);


 kill_fasync(&dev->async_queue, SIGIO, POLL_IN);
 wake_up_interruptible(&dev->waitq);


 kref_put(&dev->kref, yurex_delete);

 dev_info(&interface->dev, "USB YUREX #%d now disconnected\n", minor);
}
