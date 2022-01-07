
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfa384x {TYPE_1__* wlandev; int usb; } ;
struct TYPE_2__ {int netdev; } ;


 int netdev_err (int ,char*,int) ;
 int usb_reset_device (int ) ;

int hfa384x_corereset(struct hfa384x *hw, int holdtime,
        int settletime, int genesis)
{
 int result;

 result = usb_reset_device(hw->usb);
 if (result < 0) {
  netdev_err(hw->wlandev->netdev, "usb_reset_device() failed, result=%d.\n",
      result);
 }

 return result;
}
