
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct chaoskey {int present; int lock; int open; int urb; int hwrng; scalar_t__ hwrng_registered; } ;


 int chaoskey_class ;
 int chaoskey_free (struct chaoskey*) ;
 int hwrng_unregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_dbg (struct usb_interface*,char*) ;
 int usb_deregister_dev (struct usb_interface*,int *) ;
 struct chaoskey* usb_get_intfdata (struct usb_interface*) ;
 int usb_poison_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void chaoskey_disconnect(struct usb_interface *interface)
{
 struct chaoskey *dev;

 usb_dbg(interface, "disconnect");
 dev = usb_get_intfdata(interface);
 if (!dev) {
  usb_dbg(interface, "disconnect failed - no dev");
  return;
 }

 if (dev->hwrng_registered)
  hwrng_unregister(&dev->hwrng);

 usb_deregister_dev(interface, &chaoskey_class);

 usb_set_intfdata(interface, ((void*)0));
 mutex_lock(&dev->lock);

 dev->present = 0;
 usb_poison_urb(dev->urb);

 if (!dev->open) {
  mutex_unlock(&dev->lock);
  chaoskey_free(dev);
 } else
  mutex_unlock(&dev->lock);

 usb_dbg(interface, "disconnect done");
}
