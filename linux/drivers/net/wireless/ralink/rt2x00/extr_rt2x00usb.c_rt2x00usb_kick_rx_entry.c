
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct rt2x00_dev {int flags; int dev; } ;
struct queue_entry_priv_usb {int urb; } ;
struct queue_entry {int flags; TYPE_2__* skb; TYPE_1__* queue; struct queue_entry_priv_usb* priv_data; } ;
struct TYPE_4__ {int len; int data; } ;
struct TYPE_3__ {int usb_endpoint; struct rt2x00_dev* rt2x00dev; } ;


 int DEVICE_STATE_PRESENT ;
 int ENTRY_DATA_IO_FAILED ;
 int ENTRY_OWNER_DEVICE_DATA ;
 int GFP_ATOMIC ;
 int clear_bit (int ,int *) ;
 int rt2x00lib_dmadone (struct queue_entry*) ;
 int rt2x00lib_dmastart (struct queue_entry*) ;
 scalar_t__ rt2x00usb_check_usb_error (struct rt2x00_dev*,int) ;
 int rt2x00usb_interrupt_rxdone ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 struct usb_device* to_usb_device_intf (int ) ;
 int usb_fill_bulk_urb (int ,struct usb_device*,int ,int ,int ,int ,struct queue_entry*) ;
 int usb_rcvbulkpipe (struct usb_device*,int ) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static bool rt2x00usb_kick_rx_entry(struct queue_entry *entry, void *data)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 struct usb_device *usb_dev = to_usb_device_intf(rt2x00dev->dev);
 struct queue_entry_priv_usb *entry_priv = entry->priv_data;
 int status;

 if (test_and_set_bit(ENTRY_OWNER_DEVICE_DATA, &entry->flags))
  return 0;

 rt2x00lib_dmastart(entry);

 usb_fill_bulk_urb(entry_priv->urb, usb_dev,
     usb_rcvbulkpipe(usb_dev, entry->queue->usb_endpoint),
     entry->skb->data, entry->skb->len,
     rt2x00usb_interrupt_rxdone, entry);

 status = usb_submit_urb(entry_priv->urb, GFP_ATOMIC);
 if (status) {
  if (rt2x00usb_check_usb_error(rt2x00dev, status))
   clear_bit(DEVICE_STATE_PRESENT, &rt2x00dev->flags);
  set_bit(ENTRY_DATA_IO_FAILED, &entry->flags);
  rt2x00lib_dmadone(entry);
 }

 return 0;
}
