
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chaoskey {int interface; struct chaoskey* buf; struct chaoskey* name; int urb; } ;


 int kfree (struct chaoskey*) ;
 int usb_dbg (int ,char*) ;
 int usb_free_urb (int ) ;
 int usb_put_intf (int ) ;

__attribute__((used)) static void chaoskey_free(struct chaoskey *dev)
{
 if (dev) {
  usb_dbg(dev->interface, "free");
  usb_free_urb(dev->urb);
  kfree(dev->name);
  kfree(dev->buf);
  usb_put_intf(dev->interface);
  kfree(dev);
 }
}
