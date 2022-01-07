
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8xxxu_tx_urb {int list; struct ieee80211_hw* hw; int urb; } ;
struct rtl8xxxu_rx_urb {struct ieee80211_hw* hw; int list; int urb; } ;
struct rtl8xxxu_priv {int tx_stopped; int shutdown; int rx_urb_lock; int tx_urb_free_count; int tx_urb_free_list; scalar_t__ usb_interrupts; TYPE_1__* fops; int int_anchor; int tx_anchor; int rx_anchor; } ;
struct ieee80211_hw {struct rtl8xxxu_priv* priv; } ;
struct TYPE_2__ {int (* enable_rf ) (struct rtl8xxxu_priv*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int REG_OFDM0_XA_AGC_CORE1 ;
 int REG_RXFLTMAP0 ;
 int REG_RXFLTMAP2 ;
 int RTL8XXXU_RX_URBS ;
 int RTL8XXXU_TX_URBS ;
 int init_usb_anchor (int *) ;
 void* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int rtl8xxxu_free_tx_resources (struct rtl8xxxu_priv*) ;
 int rtl8xxxu_submit_int_urb (struct ieee80211_hw*) ;
 int rtl8xxxu_submit_rx_urb (struct rtl8xxxu_priv*,struct rtl8xxxu_rx_urb*) ;
 int rtl8xxxu_write16 (struct rtl8xxxu_priv*,int ,int) ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct rtl8xxxu_priv*) ;
 int usb_init_urb (int *) ;

__attribute__((used)) static int rtl8xxxu_start(struct ieee80211_hw *hw)
{
 struct rtl8xxxu_priv *priv = hw->priv;
 struct rtl8xxxu_rx_urb *rx_urb;
 struct rtl8xxxu_tx_urb *tx_urb;
 unsigned long flags;
 int ret, i;

 ret = 0;

 init_usb_anchor(&priv->rx_anchor);
 init_usb_anchor(&priv->tx_anchor);
 init_usb_anchor(&priv->int_anchor);

 priv->fops->enable_rf(priv);
 if (priv->usb_interrupts) {
  ret = rtl8xxxu_submit_int_urb(hw);
  if (ret)
   goto exit;
 }

 for (i = 0; i < RTL8XXXU_TX_URBS; i++) {
  tx_urb = kmalloc(sizeof(struct rtl8xxxu_tx_urb), GFP_KERNEL);
  if (!tx_urb) {
   if (!i)
    ret = -ENOMEM;

   goto error_out;
  }
  usb_init_urb(&tx_urb->urb);
  INIT_LIST_HEAD(&tx_urb->list);
  tx_urb->hw = hw;
  list_add(&tx_urb->list, &priv->tx_urb_free_list);
  priv->tx_urb_free_count++;
 }

 priv->tx_stopped = 0;

 spin_lock_irqsave(&priv->rx_urb_lock, flags);
 priv->shutdown = 0;
 spin_unlock_irqrestore(&priv->rx_urb_lock, flags);

 for (i = 0; i < RTL8XXXU_RX_URBS; i++) {
  rx_urb = kmalloc(sizeof(struct rtl8xxxu_rx_urb), GFP_KERNEL);
  if (!rx_urb) {
   if (!i)
    ret = -ENOMEM;

   goto error_out;
  }
  usb_init_urb(&rx_urb->urb);
  INIT_LIST_HEAD(&rx_urb->list);
  rx_urb->hw = hw;

  ret = rtl8xxxu_submit_rx_urb(priv, rx_urb);
 }
exit:



 rtl8xxxu_write16(priv, REG_RXFLTMAP2, 0xffff);
 rtl8xxxu_write16(priv, REG_RXFLTMAP0, 0xffff);

 rtl8xxxu_write32(priv, REG_OFDM0_XA_AGC_CORE1, 0x6954341e);

 return ret;

error_out:
 rtl8xxxu_free_tx_resources(priv);



 rtl8xxxu_write16(priv, REG_RXFLTMAP2, 0x0000);
 rtl8xxxu_write16(priv, REG_RXFLTMAP0, 0x0000);

 return ret;
}
