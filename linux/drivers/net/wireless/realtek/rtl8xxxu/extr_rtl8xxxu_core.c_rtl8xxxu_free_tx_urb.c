
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8xxxu_tx_urb {int list; } ;
struct rtl8xxxu_priv {scalar_t__ tx_urb_free_count; int tx_stopped; int tx_urb_lock; int hw; int tx_urb_free_list; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ RTL8XXXU_TX_URB_HIGH_WATER ;
 int ieee80211_wake_queues (int ) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rtl8xxxu_free_tx_urb(struct rtl8xxxu_priv *priv,
     struct rtl8xxxu_tx_urb *tx_urb)
{
 unsigned long flags;

 INIT_LIST_HEAD(&tx_urb->list);

 spin_lock_irqsave(&priv->tx_urb_lock, flags);

 list_add(&tx_urb->list, &priv->tx_urb_free_list);
 priv->tx_urb_free_count++;
 if (priv->tx_urb_free_count > RTL8XXXU_TX_URB_HIGH_WATER &&
     priv->tx_stopped) {
  priv->tx_stopped = 0;
  ieee80211_wake_queues(priv->hw);
 }

 spin_unlock_irqrestore(&priv->tx_urb_lock, flags);
}
