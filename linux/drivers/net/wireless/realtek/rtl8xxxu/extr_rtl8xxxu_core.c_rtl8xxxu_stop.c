
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8xxxu_priv {int shutdown; scalar_t__ usb_interrupts; TYPE_1__* fops; int int_anchor; int tx_anchor; int rx_anchor; int rx_urb_lock; } ;
struct ieee80211_hw {struct rtl8xxxu_priv* priv; } ;
struct TYPE_2__ {int (* disable_rf ) (struct rtl8xxxu_priv*) ;} ;


 int REG_RXFLTMAP0 ;
 int REG_RXFLTMAP2 ;
 int REG_TXPAUSE ;
 int REG_USB_HIMR ;
 int rtl8xxxu_free_rx_resources (struct rtl8xxxu_priv*) ;
 int rtl8xxxu_free_tx_resources (struct rtl8xxxu_priv*) ;
 int rtl8xxxu_write16 (struct rtl8xxxu_priv*,int ,int) ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int ) ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct rtl8xxxu_priv*) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void rtl8xxxu_stop(struct ieee80211_hw *hw)
{
 struct rtl8xxxu_priv *priv = hw->priv;
 unsigned long flags;

 rtl8xxxu_write8(priv, REG_TXPAUSE, 0xff);

 rtl8xxxu_write16(priv, REG_RXFLTMAP0, 0x0000);
 rtl8xxxu_write16(priv, REG_RXFLTMAP2, 0x0000);

 spin_lock_irqsave(&priv->rx_urb_lock, flags);
 priv->shutdown = 1;
 spin_unlock_irqrestore(&priv->rx_urb_lock, flags);

 usb_kill_anchored_urbs(&priv->rx_anchor);
 usb_kill_anchored_urbs(&priv->tx_anchor);
 if (priv->usb_interrupts)
  usb_kill_anchored_urbs(&priv->int_anchor);

 rtl8xxxu_write8(priv, REG_TXPAUSE, 0xff);

 priv->fops->disable_rf(priv);




 if (priv->usb_interrupts)
  rtl8xxxu_write32(priv, REG_USB_HIMR, 0);

 rtl8xxxu_free_rx_resources(priv);
 rtl8xxxu_free_tx_resources(priv);
}
