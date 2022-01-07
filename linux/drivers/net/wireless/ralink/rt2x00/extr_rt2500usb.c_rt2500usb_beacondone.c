
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {scalar_t__ context; } ;
struct queue_entry_priv_usb_bcn {struct urb* urb; struct urb* guardian_urb; } ;
struct queue_entry {int * skb; TYPE_2__* queue; struct queue_entry_priv_usb_bcn* priv_data; } ;
struct TYPE_4__ {TYPE_1__* rt2x00dev; } ;
struct TYPE_3__ {int flags; } ;


 int DEVICE_STATE_ENABLED_RADIO ;
 int GFP_ATOMIC ;
 int dev_kfree_skb (int *) ;
 int test_bit (int ,int *) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void rt2500usb_beacondone(struct urb *urb)
{
 struct queue_entry *entry = (struct queue_entry *)urb->context;
 struct queue_entry_priv_usb_bcn *bcn_priv = entry->priv_data;

 if (!test_bit(DEVICE_STATE_ENABLED_RADIO, &entry->queue->rt2x00dev->flags))
  return;







 if (bcn_priv->guardian_urb == urb) {
  usb_submit_urb(bcn_priv->urb, GFP_ATOMIC);
 } else if (bcn_priv->urb == urb) {
  dev_kfree_skb(entry->skb);
  entry->skb = ((void*)0);
 }
}
