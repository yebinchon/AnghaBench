
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct us_data {TYPE_1__* pusb_dev; int dflags; int pusb_intf; } ;
struct TYPE_4__ {int quirks; } ;


 int EIO ;
 int EPERM ;
 int USB_QUIRK_RESET ;
 int US_FLIDX_DISCONNECTING ;
 scalar_t__ test_bit (int ,int *) ;
 int usb_lock_device_for_reset (TYPE_1__*,int ) ;
 int usb_reset_device (TYPE_1__*) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;
 int usb_unlock_device (TYPE_1__*) ;

int usb_stor_port_reset(struct us_data *us)
{
 int result;


 if (us->pusb_dev->quirks & USB_QUIRK_RESET)
  return -EPERM;

 result = usb_lock_device_for_reset(us->pusb_dev, us->pusb_intf);
 if (result < 0)
  usb_stor_dbg(us, "unable to lock device for reset: %d\n",
        result);
 else {

  if (test_bit(US_FLIDX_DISCONNECTING, &us->dflags)) {
   result = -EIO;
   usb_stor_dbg(us, "No reset during disconnect\n");
  } else {
   result = usb_reset_device(us->pusb_dev);
   usb_stor_dbg(us, "usb_reset_device returns %d\n",
         result);
  }
  usb_unlock_device(us->pusb_dev);
 }
 return result;
}
