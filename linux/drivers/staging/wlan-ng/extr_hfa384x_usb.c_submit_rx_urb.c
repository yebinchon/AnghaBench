
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union hfa384x_usbin {int dummy; } hfa384x_usbin ;
struct sk_buff {int data; } ;
struct hfa384x {struct sk_buff* rx_urb_skb; int usb_work; int usb_flags; TYPE_1__* wlandev; int rx_urb; int endp_in; int usb; } ;
typedef int gfp_t ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {TYPE_2__* netdev; int hwremoved; } ;


 int ENOLINK ;
 int ENOMEM ;
 int EPIPE ;
 int WORK_RX_HALT ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int hfa384x_usbin_callback ;
 int netdev_warn (TYPE_2__*,char*,int ) ;
 int schedule_work (int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int usb_fill_bulk_urb (int *,int ,int ,int ,int,int ,TYPE_1__*) ;
 int usb_submit_urb (int *,int ) ;

__attribute__((used)) static int submit_rx_urb(struct hfa384x *hw, gfp_t memflags)
{
 struct sk_buff *skb;
 int result;

 skb = dev_alloc_skb(sizeof(union hfa384x_usbin));
 if (!skb) {
  result = -ENOMEM;
  goto done;
 }


 usb_fill_bulk_urb(&hw->rx_urb, hw->usb,
     hw->endp_in,
     skb->data, sizeof(union hfa384x_usbin),
     hfa384x_usbin_callback, hw->wlandev);

 hw->rx_urb_skb = skb;

 result = -ENOLINK;
 if (!hw->wlandev->hwremoved &&
     !test_bit(WORK_RX_HALT, &hw->usb_flags)) {
  result = usb_submit_urb(&hw->rx_urb, memflags);


  if (result == -EPIPE) {
   netdev_warn(hw->wlandev->netdev,
        "%s rx pipe stalled: requesting reset\n",
        hw->wlandev->netdev->name);
   if (!test_and_set_bit(WORK_RX_HALT, &hw->usb_flags))
    schedule_work(&hw->usb_work);
  }
 }


 if (result != 0) {
  dev_kfree_skb(skb);
  hw->rx_urb_skb = ((void*)0);
 }

done:
 return result;
}
