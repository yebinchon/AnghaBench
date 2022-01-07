
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int len; } ;
struct TYPE_4__ {int rp; int len; int wp; } ;
struct rtw_pci_tx_ring {int queue_stopped; TYPE_2__ r; int queue; } ;
struct rtw_pci_tx_data {int sn; int dma; } ;
struct rtw_pci {int pdev; struct rtw_pci_tx_ring* tx_rings; } ;
struct rtw_dev {TYPE_1__* chip; struct ieee80211_hw* hw; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {int tx_pkt_desc_sz; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int IEEE80211_TX_STAT_ACK ;
 int IEEE80211_TX_STAT_NOACK_TRANSMITTED ;
 int PCI_DMA_TODEVICE ;
 size_t RTW_TX_QUEUE_H2C ;
 int avail_desc (int ,int,int) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int ieee80211_tx_info_clear_status (struct ieee80211_tx_info*) ;
 int ieee80211_tx_status_irqsafe (struct ieee80211_hw*,struct sk_buff*) ;
 int ieee80211_wake_queue (struct ieee80211_hw*,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 struct rtw_pci_tx_data* rtw_pci_get_tx_data (struct sk_buff*) ;
 int* rtw_pci_tx_queue_idx_addr ;
 int rtw_read32 (struct rtw_dev*,int) ;
 int rtw_tx_report_enqueue (struct rtw_dev*,struct sk_buff*,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;

__attribute__((used)) static void rtw_pci_tx_isr(struct rtw_dev *rtwdev, struct rtw_pci *rtwpci,
      u8 hw_queue)
{
 struct ieee80211_hw *hw = rtwdev->hw;
 struct ieee80211_tx_info *info;
 struct rtw_pci_tx_ring *ring;
 struct rtw_pci_tx_data *tx_data;
 struct sk_buff *skb;
 u32 count;
 u32 bd_idx_addr;
 u32 bd_idx, cur_rp;
 u16 q_map;

 ring = &rtwpci->tx_rings[hw_queue];

 bd_idx_addr = rtw_pci_tx_queue_idx_addr[hw_queue];
 bd_idx = rtw_read32(rtwdev, bd_idx_addr);
 cur_rp = bd_idx >> 16;
 cur_rp &= 0xfff;
 if (cur_rp >= ring->r.rp)
  count = cur_rp - ring->r.rp;
 else
  count = ring->r.len - (ring->r.rp - cur_rp);

 while (count--) {
  skb = skb_dequeue(&ring->queue);
  tx_data = rtw_pci_get_tx_data(skb);
  pci_unmap_single(rtwpci->pdev, tx_data->dma, skb->len,
     PCI_DMA_TODEVICE);


  if (hw_queue == RTW_TX_QUEUE_H2C) {
   dev_kfree_skb_irq(skb);
   continue;
  }

  if (ring->queue_stopped &&
      avail_desc(ring->r.wp, ring->r.rp, ring->r.len) > 4) {
   q_map = skb_get_queue_mapping(skb);
   ieee80211_wake_queue(hw, q_map);
   ring->queue_stopped = 0;
  }

  skb_pull(skb, rtwdev->chip->tx_pkt_desc_sz);

  info = IEEE80211_SKB_CB(skb);


  if (info->flags & IEEE80211_TX_CTL_REQ_TX_STATUS) {
   rtw_tx_report_enqueue(rtwdev, skb, tx_data->sn);
   continue;
  }


  if (info->flags & IEEE80211_TX_CTL_NO_ACK)
   info->flags |= IEEE80211_TX_STAT_NOACK_TRANSMITTED;
  else
   info->flags |= IEEE80211_TX_STAT_ACK;

  ieee80211_tx_info_clear_status(info);
  ieee80211_tx_status_irqsafe(hw, skb);
 }

 ring->r.rp = cur_rp;
}
