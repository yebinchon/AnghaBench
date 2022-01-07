
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct usb_device {int dummy; } ;
struct sk_buff {int len; int data; } ;
struct mt7601u_tx_queue {int entries; int used; size_t end; struct mt7601u_dma_buf_tx* e; } ;
struct mt7601u_dma_buf_tx {int urb; struct sk_buff* skb; } ;
struct mt7601u_dev {int tx_lock; int hw; int dev; int state; struct mt7601u_tx_queue* tx_q; int * out_eps; } ;


 int ENODEV ;
 int ENOSPC ;
 int GFP_ATOMIC ;
 int MT7601U_STATE_REMOVED ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (int ,char*,int) ;
 int ieee80211_stop_queue (int ,int ) ;
 int mt7601u_complete_tx ;
 struct usb_device* mt7601u_to_usb_dev (struct mt7601u_dev*) ;
 int set_bit (int ,int *) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_fill_bulk_urb (int ,struct usb_device*,unsigned int,int ,int ,int ,struct mt7601u_tx_queue*) ;
 unsigned int usb_sndbulkpipe (struct usb_device*,int ) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int mt7601u_dma_submit_tx(struct mt7601u_dev *dev,
     struct sk_buff *skb, u8 ep)
{
 struct usb_device *usb_dev = mt7601u_to_usb_dev(dev);
 unsigned snd_pipe = usb_sndbulkpipe(usb_dev, dev->out_eps[ep]);
 struct mt7601u_dma_buf_tx *e;
 struct mt7601u_tx_queue *q = &dev->tx_q[ep];
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&dev->tx_lock, flags);

 if (WARN_ON(q->entries <= q->used)) {
  ret = -ENOSPC;
  goto out;
 }

 e = &q->e[q->end];
 e->skb = skb;
 usb_fill_bulk_urb(e->urb, usb_dev, snd_pipe, skb->data, skb->len,
     mt7601u_complete_tx, q);
 ret = usb_submit_urb(e->urb, GFP_ATOMIC);
 if (ret) {



  if (ret == -ENODEV)
   set_bit(MT7601U_STATE_REMOVED, &dev->state);
  else
   dev_err(dev->dev, "Error: TX urb submit failed:%d\n",
    ret);
  goto out;
 }

 q->end = (q->end + 1) % q->entries;
 q->used++;

 if (q->used >= q->entries)
  ieee80211_stop_queue(dev->hw, skb_get_queue_mapping(skb));
out:
 spin_unlock_irqrestore(&dev->tx_lock, flags);

 return ret;
}
