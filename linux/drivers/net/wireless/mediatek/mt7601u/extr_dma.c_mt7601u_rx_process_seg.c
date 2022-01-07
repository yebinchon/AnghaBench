
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct mt7601u_rxwi {scalar_t__* zero; } ;
struct mt7601u_dev {int mac_lock; int hw; int dev; } ;


 int FIELD_GET (int ,int) ;
 scalar_t__ MT_DMA_HDR_LEN ;
 int MT_FCE_INFO_LEN ;
 int MT_RXD_INFO_TYPE ;
 int dev_err_once (int ,char*) ;
 int get_unaligned_le32 (int *) ;
 int ieee80211_rx (int ,struct sk_buff*) ;
 struct sk_buff* mt7601u_rx_skb_from_seg (struct mt7601u_dev*,struct mt7601u_rxwi*,int *,int,int,struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_mt_rx (struct mt7601u_dev*,struct mt7601u_rxwi*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mt7601u_rx_process_seg(struct mt7601u_dev *dev, u8 *data,
       u32 seg_len, struct page *p)
{
 struct sk_buff *skb;
 struct mt7601u_rxwi *rxwi;
 u32 fce_info, truesize = seg_len;




 fce_info = get_unaligned_le32(data + seg_len - MT_FCE_INFO_LEN);
 seg_len -= MT_FCE_INFO_LEN;

 data += MT_DMA_HDR_LEN;
 seg_len -= MT_DMA_HDR_LEN;

 rxwi = (struct mt7601u_rxwi *) data;
 data += sizeof(struct mt7601u_rxwi);
 seg_len -= sizeof(struct mt7601u_rxwi);

 if (unlikely(rxwi->zero[0] || rxwi->zero[1] || rxwi->zero[2]))
  dev_err_once(dev->dev, "Error: RXWI zero fields are set\n");
 if (unlikely(FIELD_GET(MT_RXD_INFO_TYPE, fce_info)))
  dev_err_once(dev->dev, "Error: RX path seen a non-pkt urb\n");

 trace_mt_rx(dev, rxwi, fce_info);

 skb = mt7601u_rx_skb_from_seg(dev, rxwi, data, seg_len, truesize, p);
 if (!skb)
  return;

 spin_lock(&dev->mac_lock);
 ieee80211_rx(dev->hw, skb);
 spin_unlock(&dev->mac_lock);
}
