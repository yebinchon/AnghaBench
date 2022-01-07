
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtl8180_priv {int lock; TYPE_1__* map; } ;
struct ieee80211_hw {int wiphy; struct rtl8180_priv* priv; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int INT_TIMEOUT; int INT_STATUS_SE; } ;


 int IMR_RER ;
 int IMR_ROK ;
 int IMR_RQOSOK ;
 int IMR_TBDER ;
 int IMR_TBDOK ;
 int IMR_TBEDER ;
 int IMR_TBEDOK ;
 int IMR_TBKDER ;
 int IMR_TBKDOK ;
 int IMR_TIMEOUT1 ;
 int IMR_TVIDER ;
 int IMR_TVIDOK ;
 int IMR_TVODER ;
 int IMR_TVODOK ;
 int IRQ_HANDLED ;
 int RTL818X_INT_SE_RX_DU ;
 scalar_t__ net_ratelimit () ;
 int rtl8180_handle_rx (struct ieee80211_hw*) ;
 int rtl8180_handle_tx (struct ieee80211_hw*,int) ;
 int rtl818x_ioread32 (struct rtl8180_priv*,int *) ;
 int rtl818x_iowrite32 (struct rtl8180_priv*,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wiphy_err (int ,char*) ;

__attribute__((used)) static irqreturn_t rtl8187se_interrupt(int irq, void *dev_id)
{
 struct ieee80211_hw *dev = dev_id;
 struct rtl8180_priv *priv = dev->priv;
 u32 reg;
 unsigned long flags;
 static int desc_err;

 spin_lock_irqsave(&priv->lock, flags);

 reg = rtl818x_ioread32(priv, &priv->map->INT_STATUS_SE);
 if (unlikely(reg == 0xFFFFFFFF)) {
  spin_unlock_irqrestore(&priv->lock, flags);
  return IRQ_HANDLED;
 }

 rtl818x_iowrite32(priv, &priv->map->INT_STATUS_SE, reg);

 if (reg & IMR_TIMEOUT1)
  rtl818x_iowrite32(priv, &priv->map->INT_TIMEOUT, 0);

 if (reg & (IMR_TBDOK | IMR_TBDER))
  rtl8180_handle_tx(dev, 4);

 if (reg & (IMR_TVODOK | IMR_TVODER))
  rtl8180_handle_tx(dev, 0);

 if (reg & (IMR_TVIDOK | IMR_TVIDER))
  rtl8180_handle_tx(dev, 1);

 if (reg & (IMR_TBEDOK | IMR_TBEDER))
  rtl8180_handle_tx(dev, 2);

 if (reg & (IMR_TBKDOK | IMR_TBKDER))
  rtl8180_handle_tx(dev, 3);

 if (reg & (IMR_ROK | IMR_RER | RTL818X_INT_SE_RX_DU | IMR_RQOSOK))
  rtl8180_handle_rx(dev);



 if ((reg & RTL818X_INT_SE_RX_DU) && desc_err++ > 2)
  if (net_ratelimit())
   wiphy_err(dev->wiphy, "No RX DMA Descriptor avail\n");

 spin_unlock_irqrestore(&priv->lock, flags);
 return IRQ_HANDLED;
}
