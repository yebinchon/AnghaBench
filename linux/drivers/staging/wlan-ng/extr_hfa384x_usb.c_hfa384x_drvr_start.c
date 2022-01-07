
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hfa384x {int state; TYPE_1__* wlandev; int rx_urb; int endp_out; int usb; int endp_in; } ;
struct TYPE_2__ {int netdev; } ;


 int GFP_KERNEL ;
 int HFA384x_STATE_RUNNING ;
 int USB_RECIP_ENDPOINT ;
 int hfa384x_cmd_initialize (struct hfa384x*) ;
 int might_sleep () ;
 int msleep (int) ;
 int netdev_err (int ,char*,...) ;
 int netdev_warn (int ,char*,...) ;
 int pr_debug (char*,...) ;
 int submit_rx_urb (struct hfa384x*,int ) ;
 scalar_t__ usb_clear_halt (int ,int ) ;
 int usb_get_std_status (int ,int ,int ,int*) ;
 int usb_kill_urb (int *) ;

int hfa384x_drvr_start(struct hfa384x *hw)
{
 int result, result1, result2;
 u16 status;

 might_sleep();






 result =
     usb_get_std_status(hw->usb, USB_RECIP_ENDPOINT, hw->endp_in,
          &status);
 if (result < 0) {
  netdev_err(hw->wlandev->netdev, "Cannot get bulk in endpoint status.\n");
  goto done;
 }
 if ((status == 1) && usb_clear_halt(hw->usb, hw->endp_in))
  netdev_err(hw->wlandev->netdev, "Failed to reset bulk in endpoint.\n");

 result =
     usb_get_std_status(hw->usb, USB_RECIP_ENDPOINT, hw->endp_out,
          &status);
 if (result < 0) {
  netdev_err(hw->wlandev->netdev, "Cannot get bulk out endpoint status.\n");
  goto done;
 }
 if ((status == 1) && usb_clear_halt(hw->usb, hw->endp_out))
  netdev_err(hw->wlandev->netdev, "Failed to reset bulk out endpoint.\n");


 usb_kill_urb(&hw->rx_urb);


 result = submit_rx_urb(hw, GFP_KERNEL);
 if (result != 0) {
  netdev_err(hw->wlandev->netdev,
      "Fatal, failed to submit RX URB, result=%d\n",
      result);
  goto done;
 }
 result1 = hfa384x_cmd_initialize(hw);
 msleep(1000);
 result = hfa384x_cmd_initialize(hw);
 result2 = result;
 if (result1 != 0) {
  if (result2 != 0) {
   netdev_err(hw->wlandev->netdev,
       "cmd_initialize() failed on two attempts, results %d and %d\n",
       result1, result2);
   usb_kill_urb(&hw->rx_urb);
   goto done;
  } else {
   pr_debug("First cmd_initialize() failed (result %d),\n",
     result1);
   pr_debug("but second attempt succeeded. All should be ok\n");
  }
 } else if (result2 != 0) {
  netdev_warn(hw->wlandev->netdev, "First cmd_initialize() succeeded, but second attempt failed (result=%d)\n",
       result2);
  netdev_warn(hw->wlandev->netdev,
       "Most likely the card will be functional\n");
  goto done;
 }

 hw->state = HFA384x_STATE_RUNNING;

done:
 return result;
}
