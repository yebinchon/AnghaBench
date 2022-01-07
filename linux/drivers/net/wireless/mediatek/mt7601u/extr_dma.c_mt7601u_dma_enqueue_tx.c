
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct mt76_wcid {int hw_key_idx; } ;
struct mt7601u_dev {int hw; } ;


 int MT_TXD_PKT_INFO_80211 ;
 int MT_TXD_PKT_INFO_WIV ;
 int ep2dmaq (int ) ;
 int ieee80211_free_txskb (int ,struct sk_buff*) ;
 int mt7601u_dma_skb_wrap_pkt (struct sk_buff*,int ,int ) ;
 int mt7601u_dma_submit_tx (struct mt7601u_dev*,struct sk_buff*,int ) ;
 int q2ep (int) ;

int mt7601u_dma_enqueue_tx(struct mt7601u_dev *dev, struct sk_buff *skb,
      struct mt76_wcid *wcid, int hw_q)
{
 u8 ep = q2ep(hw_q);
 u32 dma_flags;
 int ret;

 dma_flags = MT_TXD_PKT_INFO_80211;
 if (wcid->hw_key_idx == 0xff)
  dma_flags |= MT_TXD_PKT_INFO_WIV;

 ret = mt7601u_dma_skb_wrap_pkt(skb, ep2dmaq(ep), dma_flags);
 if (ret)
  return ret;

 ret = mt7601u_dma_submit_tx(dev, skb, ep);
 if (ret) {
  ieee80211_free_txskb(dev->hw, skb);
  return ret;
 }

 return 0;
}
