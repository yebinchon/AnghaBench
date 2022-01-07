
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rtl8180_priv {int lock; TYPE_1__* map; } ;
struct ieee80211_hw {struct rtl8180_priv* priv; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int INT_STATUS; } ;


 int IRQ_HANDLED ;
 int RTL818X_INT_RX_ERR ;
 int RTL818X_INT_RX_OK ;
 int RTL818X_INT_TXB_ERR ;
 int RTL818X_INT_TXB_OK ;
 int RTL818X_INT_TXL_ERR ;
 int RTL818X_INT_TXL_OK ;
 int rtl8180_handle_rx (struct ieee80211_hw*) ;
 int rtl8180_handle_tx (struct ieee80211_hw*,int) ;
 int rtl818x_ioread16 (struct rtl8180_priv*,int *) ;
 int rtl818x_iowrite16 (struct rtl8180_priv*,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t rtl8180_interrupt(int irq, void *dev_id)
{
 struct ieee80211_hw *dev = dev_id;
 struct rtl8180_priv *priv = dev->priv;
 u16 reg;

 spin_lock(&priv->lock);
 reg = rtl818x_ioread16(priv, &priv->map->INT_STATUS);
 if (unlikely(reg == 0xFFFF)) {
  spin_unlock(&priv->lock);
  return IRQ_HANDLED;
 }

 rtl818x_iowrite16(priv, &priv->map->INT_STATUS, reg);

 if (reg & (RTL818X_INT_TXB_OK | RTL818X_INT_TXB_ERR))
  rtl8180_handle_tx(dev, 1);

 if (reg & (RTL818X_INT_TXL_OK | RTL818X_INT_TXL_ERR))
  rtl8180_handle_tx(dev, 0);

 if (reg & (RTL818X_INT_RX_OK | RTL818X_INT_RX_ERR))
  rtl8180_handle_rx(dev);

 spin_unlock(&priv->lock);

 return IRQ_HANDLED;
}
