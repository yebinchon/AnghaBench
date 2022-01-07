
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
typedef enum mt76_qsel { ____Placeholder_mt76_qsel } mt76_qsel ;


 int DMA_PACKET ;
 int FIELD_PREP (int ,int) ;
 int MT_TXD_PKT_INFO_QSEL ;
 int WLAN_PORT ;
 int mt7601u_dma_skb_wrap (struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static inline int
mt7601u_dma_skb_wrap_pkt(struct sk_buff *skb, enum mt76_qsel qsel, u32 flags)
{
 flags |= FIELD_PREP(MT_TXD_PKT_INFO_QSEL, qsel);
 return mt7601u_dma_skb_wrap(skb, WLAN_PORT, DMA_PACKET, flags);
}
