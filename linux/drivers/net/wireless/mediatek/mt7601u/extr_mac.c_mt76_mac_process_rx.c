
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct mt7601u_rxwi {int rxinfo; int rate; int ctl; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct mt7601u_dev {int con_mon_lock; int avg_rssi; TYPE_2__ chandef; } ;
struct ieee80211_rx_status {int* chain_signal; int signal; int band; int freq; int chains; int flag; } ;
struct TYPE_3__ {int band; int center_freq; } ;


 int BIT (int ) ;
 int FIELD_GET (int ,int) ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int MT_RXINFO_DECRYPT ;
 int MT_RXINFO_PN_LEN ;
 int MT_RXINFO_U2M ;
 int MT_RXWI_CTL_MPDU_LEN ;
 int RX_FLAG_DECRYPTED ;
 int RX_FLAG_ICV_STRIPPED ;
 int RX_FLAG_IV_STRIPPED ;
 int RX_FLAG_MIC_STRIPPED ;
 int RX_FLAG_MMIC_STRIPPED ;
 int cpu_to_le32 (int ) ;
 int ewma_rssi_add (int *,int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int mt7601u_phy_get_rssi (struct mt7601u_dev*,struct mt7601u_rxwi*,int ) ;
 scalar_t__ mt7601u_rx_is_our_beacon (struct mt7601u_dev*,int *) ;
 int mt7601u_rx_monitor_beacon (struct mt7601u_dev*,struct mt7601u_rxwi*,int ,int) ;
 int mt76_mac_process_rate (struct ieee80211_rx_status*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

u32 mt76_mac_process_rx(struct mt7601u_dev *dev, struct sk_buff *skb,
   u8 *data, void *rxi)
{
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);
 struct mt7601u_rxwi *rxwi = rxi;
 u32 len, ctl = le32_to_cpu(rxwi->ctl);
 u16 rate = le16_to_cpu(rxwi->rate);
 int rssi;

 len = FIELD_GET(MT_RXWI_CTL_MPDU_LEN, ctl);
 if (len < 10)
  return 0;

 if (rxwi->rxinfo & cpu_to_le32(MT_RXINFO_DECRYPT)) {
  status->flag |= RX_FLAG_DECRYPTED;
  status->flag |= RX_FLAG_MMIC_STRIPPED;
  status->flag |= RX_FLAG_MIC_STRIPPED;
  status->flag |= RX_FLAG_ICV_STRIPPED;
  status->flag |= RX_FLAG_IV_STRIPPED;
 }



 if (rxwi->rxinfo & cpu_to_le32(MT_RXINFO_PN_LEN))
  status->flag &= ~RX_FLAG_IV_STRIPPED;

 status->chains = BIT(0);
 rssi = mt7601u_phy_get_rssi(dev, rxwi, rate);
 status->chain_signal[0] = status->signal = rssi;
 status->freq = dev->chandef.chan->center_freq;
 status->band = dev->chandef.chan->band;

 mt76_mac_process_rate(status, rate);

 spin_lock_bh(&dev->con_mon_lock);
 if (mt7601u_rx_is_our_beacon(dev, data))
  mt7601u_rx_monitor_beacon(dev, rxwi, rate, rssi);
 else if (rxwi->rxinfo & cpu_to_le32(MT_RXINFO_U2M))
  ewma_rssi_add(&dev->avg_rssi, -rssi);
 spin_unlock_bh(&dev->con_mon_lock);

 return len;
}
