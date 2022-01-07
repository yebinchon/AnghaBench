
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_cardstate {int busy; int bulk_out_urb; int bulk_out_buffer; int bulk_out_epnum; int udev; scalar_t__ bulk_out_size; } ;
struct TYPE_6__ {struct usb_cardstate* usb; } ;
struct cardstate {int dev; int lock; scalar_t__ connected; TYPE_1__ hw; struct bc_state* bcs; } ;
struct bc_state {TYPE_2__* tx_skb; } ;
struct TYPE_7__ {unsigned long len; } ;


 int DEBUG_INTR ;
 int DEBUG_OUTPUT ;
 int EINVAL ;
 int ENODEV ;
 int GFP_ATOMIC ;
 int dev_err (int ,char*,int) ;
 int dev_kfree_skb_any (TYPE_2__*) ;
 int gig_dbg (int ,char*,unsigned long) ;
 int gigaset_skb_sent (struct bc_state*,TYPE_2__*) ;
 int gigaset_write_bulk_callback ;
 int min (unsigned long,unsigned int) ;
 int skb_copy_from_linear_data (TYPE_2__*,int ,int) ;
 int skb_pull (TYPE_2__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_fill_bulk_urb (int ,int ,int ,int ,int,int ,struct cardstate*) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int write_modem(struct cardstate *cs)
{
 int ret = 0;
 int count;
 struct bc_state *bcs = &cs->bcs[0];
 struct usb_cardstate *ucs = cs->hw.usb;
 unsigned long flags;

 gig_dbg(DEBUG_OUTPUT, "len: %d...", bcs->tx_skb->len);

 if (!bcs->tx_skb->len) {
  dev_kfree_skb_any(bcs->tx_skb);
  bcs->tx_skb = ((void*)0);
  return -EINVAL;
 }


 count = min(bcs->tx_skb->len, (unsigned) ucs->bulk_out_size);
 skb_copy_from_linear_data(bcs->tx_skb, ucs->bulk_out_buffer, count);
 skb_pull(bcs->tx_skb, count);
 ucs->busy = 1;
 gig_dbg(DEBUG_OUTPUT, "write_modem: send %d bytes", count);

 spin_lock_irqsave(&cs->lock, flags);
 if (cs->connected) {
  usb_fill_bulk_urb(ucs->bulk_out_urb, ucs->udev,
      usb_sndbulkpipe(ucs->udev,
        ucs->bulk_out_epnum),
      ucs->bulk_out_buffer, count,
      gigaset_write_bulk_callback, cs);
  ret = usb_submit_urb(ucs->bulk_out_urb, GFP_ATOMIC);
 } else {
  ret = -ENODEV;
 }
 spin_unlock_irqrestore(&cs->lock, flags);

 if (ret) {
  dev_err(cs->dev, "could not submit urb (error %d)\n", -ret);
  ucs->busy = 0;
 }

 if (!bcs->tx_skb->len) {

  gigaset_skb_sent(bcs, bcs->tx_skb);

  gig_dbg(DEBUG_INTR, "kfree skb (Adr: %lx)!",
   (unsigned long) bcs->tx_skb);
  dev_kfree_skb_any(bcs->tx_skb);
  bcs->tx_skb = ((void*)0);
 }

 return ret;
}
