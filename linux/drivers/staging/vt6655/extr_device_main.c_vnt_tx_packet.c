
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_5__ {int owner; } ;
struct TYPE_4__ {int tcr; int req_count; } ;
struct vnt_tx_desc {TYPE_3__* td_info; TYPE_2__ td0; int buff_addr; TYPE_1__ td1; struct vnt_tx_desc* next; } ;
struct vnt_private {int bPWBitOn; int lock; int * iTDUsed; int PortOffset; struct vnt_tx_desc** apCurrTD; int hw; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_6__ {int flags; int buf_dma; int req_count; struct sk_buff* skb; } ;


 int AVAIL_TD (struct vnt_private*,size_t) ;
 int EDMSDU ;
 int ENOMEM ;
 int MACvTransmit0 (int ) ;
 int MACvTransmitAC0 (int ) ;
 int OWNED_BY_NIC ;
 int TCR_EDP ;
 int TCR_STP ;
 int TD_FLAGS_NETIF_SKB ;
 size_t TYPE_AC0DMA ;
 size_t TYPE_TXDMA0 ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 int ieee80211_stop_queues (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vnt_generate_fifo_header (struct vnt_private*,size_t,struct vnt_tx_desc*,struct sk_buff*) ;
 int wmb () ;

__attribute__((used)) static int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 struct vnt_tx_desc *head_td;
 u32 dma_idx;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);

 if (ieee80211_is_data(hdr->frame_control))
  dma_idx = TYPE_AC0DMA;
 else
  dma_idx = TYPE_TXDMA0;

 if (AVAIL_TD(priv, dma_idx) < 1) {
  spin_unlock_irqrestore(&priv->lock, flags);
  ieee80211_stop_queues(priv->hw);
  return -ENOMEM;
 }

 head_td = priv->apCurrTD[dma_idx];

 head_td->td1.tcr = 0;

 head_td->td_info->skb = skb;

 if (dma_idx == TYPE_AC0DMA)
  head_td->td_info->flags = TD_FLAGS_NETIF_SKB;

 priv->apCurrTD[dma_idx] = head_td->next;

 spin_unlock_irqrestore(&priv->lock, flags);

 vnt_generate_fifo_header(priv, dma_idx, head_td, skb);

 spin_lock_irqsave(&priv->lock, flags);

 priv->bPWBitOn = 0;


 head_td->td1.tcr |= (TCR_STP | TCR_EDP | EDMSDU);
 head_td->td1.req_count = cpu_to_le16(head_td->td_info->req_count);

 head_td->buff_addr = cpu_to_le32(head_td->td_info->buf_dma);


 wmb();
 head_td->td0.owner = OWNED_BY_NIC;
 wmb();

 if (head_td->td_info->flags & TD_FLAGS_NETIF_SKB)
  MACvTransmitAC0(priv->PortOffset);
 else
  MACvTransmit0(priv->PortOffset);

 priv->iTDUsed[dma_idx]++;

 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
