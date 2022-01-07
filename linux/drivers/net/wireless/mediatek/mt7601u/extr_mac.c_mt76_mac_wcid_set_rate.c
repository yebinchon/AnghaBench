
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_wcid {int tx_rate_set; int tx_rate_nss; int tx_rate; } ;
struct mt7601u_dev {int lock; } ;
struct ieee80211_tx_rate {int dummy; } ;


 int mt76_mac_tx_rate_val (struct mt7601u_dev*,struct ieee80211_tx_rate const*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mt76_mac_wcid_set_rate(struct mt7601u_dev *dev, struct mt76_wcid *wcid,
       const struct ieee80211_tx_rate *rate)
{
 unsigned long flags;

 spin_lock_irqsave(&dev->lock, flags);
 wcid->tx_rate = mt76_mac_tx_rate_val(dev, rate, &wcid->tx_rate_nss);
 wcid->tx_rate_set = 1;
 spin_unlock_irqrestore(&dev->lock, flags);
}
