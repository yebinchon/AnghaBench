
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct net_device {int name; } ;
struct hfa384x {int usb_work; int usb_flags; TYPE_1__* wlandev; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct net_device* netdev; int hwremoved; } ;


 int ENOLINK ;
 int EPIPE ;
 int WORK_TX_HALT ;
 int netdev_warn (struct net_device*,char*,int ) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int submit_tx_urb(struct hfa384x *hw, struct urb *tx_urb, gfp_t memflags)
{
 struct net_device *netdev = hw->wlandev->netdev;
 int result;

 result = -ENOLINK;
 if (netif_running(netdev)) {
  if (!hw->wlandev->hwremoved &&
      !test_bit(WORK_TX_HALT, &hw->usb_flags)) {
   result = usb_submit_urb(tx_urb, memflags);


   if (result == -EPIPE) {
    netdev_warn(hw->wlandev->netdev,
         "%s tx pipe stalled: requesting reset\n",
         netdev->name);
    set_bit(WORK_TX_HALT, &hw->usb_flags);
    schedule_work(&hw->usb_work);
   } else if (result == 0) {
    netif_stop_queue(netdev);
   }
  }
 }

 return result;
}
