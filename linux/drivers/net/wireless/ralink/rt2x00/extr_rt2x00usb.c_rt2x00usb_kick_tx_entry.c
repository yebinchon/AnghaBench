
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct usb_device {int dummy; } ;
struct rt2x00_dev {int flags; TYPE_2__* ops; int dev; } ;
struct queue_entry_priv_usb {int urb; } ;
struct queue_entry {int flags; TYPE_4__* skb; TYPE_3__* queue; struct queue_entry_priv_usb* priv_data; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_7__ {int usb_endpoint; struct rt2x00_dev* rt2x00dev; } ;
struct TYPE_6__ {TYPE_1__* lib; } ;
struct TYPE_5__ {int (* get_tx_data_len ) (struct queue_entry*) ;} ;


 int DEVICE_STATE_PRESENT ;
 int ENTRY_DATA_IO_FAILED ;
 int ENTRY_DATA_PENDING ;
 int ENTRY_DATA_STATUS_PENDING ;
 int GFP_ATOMIC ;
 int clear_bit (int ,int *) ;
 int rt2x00_warn (struct rt2x00_dev*,char*) ;
 int rt2x00lib_dmadone (struct queue_entry*) ;
 scalar_t__ rt2x00usb_check_usb_error (struct rt2x00_dev*,int) ;
 int rt2x00usb_interrupt_txdone ;
 int set_bit (int ,int *) ;
 int skb_padto (TYPE_4__*,int ) ;
 int stub1 (struct queue_entry*) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 struct usb_device* to_usb_device_intf (int ) ;
 scalar_t__ unlikely (int) ;
 int usb_fill_bulk_urb (int ,struct usb_device*,int ,int ,int ,int ,struct queue_entry*) ;
 int usb_sndbulkpipe (struct usb_device*,int ) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static bool rt2x00usb_kick_tx_entry(struct queue_entry *entry, void *data)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 struct usb_device *usb_dev = to_usb_device_intf(rt2x00dev->dev);
 struct queue_entry_priv_usb *entry_priv = entry->priv_data;
 u32 length;
 int status;

 if (!test_and_clear_bit(ENTRY_DATA_PENDING, &entry->flags) ||
     test_bit(ENTRY_DATA_STATUS_PENDING, &entry->flags))
  return 0;






 length = rt2x00dev->ops->lib->get_tx_data_len(entry);

 status = skb_padto(entry->skb, length);
 if (unlikely(status)) {

  rt2x00_warn(rt2x00dev, "TX SKB padding error, out of memory\n");
  set_bit(ENTRY_DATA_IO_FAILED, &entry->flags);
  rt2x00lib_dmadone(entry);

  return 0;
 }

 usb_fill_bulk_urb(entry_priv->urb, usb_dev,
     usb_sndbulkpipe(usb_dev, entry->queue->usb_endpoint),
     entry->skb->data, length,
     rt2x00usb_interrupt_txdone, entry);

 status = usb_submit_urb(entry_priv->urb, GFP_ATOMIC);
 if (status) {
  if (rt2x00usb_check_usb_error(rt2x00dev, status))
   clear_bit(DEVICE_STATE_PRESENT, &rt2x00dev->flags);
  set_bit(ENTRY_DATA_IO_FAILED, &entry->flags);
  rt2x00lib_dmadone(entry);
 }

 return 0;
}
