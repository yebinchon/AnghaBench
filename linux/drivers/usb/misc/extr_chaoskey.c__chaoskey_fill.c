
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chaoskey {int valid; int used; int reading; int reads_started; int interface; int wait_q; int urb; int present; } ;


 int ALEA_FIRST_TIMEOUT ;
 int DEFINE_WAIT (int ) ;
 int ENODEV ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int NAK_TIMEOUT ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;
 int usb_dbg (int ,char*,...) ;
 int usb_submit_urb (int ,int ) ;
 int usb_translate_errors (int) ;
 int wait ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int _chaoskey_fill(struct chaoskey *dev)
{
 DEFINE_WAIT(wait);
 int result;
 bool started;

 usb_dbg(dev->interface, "fill");



 if (dev->valid != dev->used) {
  usb_dbg(dev->interface, "not empty yet (valid %d used %d)",
   dev->valid, dev->used);
  return 0;
 }


 if (!dev->present) {
  usb_dbg(dev->interface, "device not present");
  return -ENODEV;
 }


 result = usb_autopm_get_interface(dev->interface);
 if (result) {
  usb_dbg(dev->interface, "wakeup failed (result %d)", result);
  return result;
 }

 dev->reading = 1;
 result = usb_submit_urb(dev->urb, GFP_KERNEL);
 if (result < 0) {
  result = usb_translate_errors(result);
  dev->reading = 0;
  goto out;
 }






 started = dev->reads_started;
 dev->reads_started = 1;
 result = wait_event_interruptible_timeout(
  dev->wait_q,
  !dev->reading,
  (started ? NAK_TIMEOUT : ALEA_FIRST_TIMEOUT) );

 if (result < 0)
  goto out;

 if (result == 0)
  result = -ETIMEDOUT;
 else
  result = dev->valid;
out:

 usb_autopm_put_interface(dev->interface);

 usb_dbg(dev->interface, "read %d bytes", dev->valid);

 return result;
}
