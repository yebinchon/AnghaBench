
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct mt7601u_dev {int mac_lock; int hw; } ;
struct TYPE_4__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ status; } ;
struct TYPE_3__ {int idx; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_STAT_ACK ;
 int ieee80211_tx_info_clear_status (struct ieee80211_tx_info*) ;
 int ieee80211_tx_status (int ,struct sk_buff*) ;
 int mt7601u_tx_skb_remove_dma_overhead (struct sk_buff*,struct ieee80211_tx_info*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mt7601u_tx_status(struct mt7601u_dev *dev, struct sk_buff *skb)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);

 mt7601u_tx_skb_remove_dma_overhead(skb, info);

 ieee80211_tx_info_clear_status(info);
 info->status.rates[0].idx = -1;
 info->flags |= IEEE80211_TX_STAT_ACK;

 spin_lock_bh(&dev->mac_lock);
 ieee80211_tx_status(dev->hw, skb);
 spin_unlock_bh(&dev->mac_lock);
}
