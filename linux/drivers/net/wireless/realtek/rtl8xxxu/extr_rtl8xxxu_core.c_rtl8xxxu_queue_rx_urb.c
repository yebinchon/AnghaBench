
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ context; } ;
struct rtl8xxxu_rx_urb {TYPE_1__ urb; int list; } ;
struct rtl8xxxu_priv {int rx_urb_pending_count; int rx_urb_wq; int rx_urb_lock; int rx_urb_pending_list; int shutdown; } ;


 int RTL8XXXU_RX_URB_PENDING_WATER ;
 int dev_kfree_skb (struct sk_buff*) ;
 int list_add_tail (int *,int *) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_free_urb (TYPE_1__*) ;

__attribute__((used)) static void rtl8xxxu_queue_rx_urb(struct rtl8xxxu_priv *priv,
      struct rtl8xxxu_rx_urb *rx_urb)
{
 struct sk_buff *skb;
 unsigned long flags;
 int pending = 0;

 spin_lock_irqsave(&priv->rx_urb_lock, flags);

 if (!priv->shutdown) {
  list_add_tail(&rx_urb->list, &priv->rx_urb_pending_list);
  priv->rx_urb_pending_count++;
  pending = priv->rx_urb_pending_count;
 } else {
  skb = (struct sk_buff *)rx_urb->urb.context;
  dev_kfree_skb(skb);
  usb_free_urb(&rx_urb->urb);
 }

 spin_unlock_irqrestore(&priv->rx_urb_lock, flags);

 if (pending > RTL8XXXU_RX_URB_PENDING_WATER)
  schedule_work(&priv->rx_urb_wq);
}
