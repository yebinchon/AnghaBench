
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {scalar_t__ cb; int * data; } ;
struct rtw_rx_pkt_stat {int drv_info_sz; int shift; int pkt_len; int vif; scalar_t__ is_c2h; } ;
struct TYPE_4__ {int wp; int len; int rp; } ;
struct rtw_pci_rx_ring {TYPE_2__ r; struct sk_buff** buf; } ;
struct rtw_pci {struct rtw_pci_rx_ring* rx_rings; } ;
struct rtw_dev {int hw; int dev; struct rtw_chip_info* chip; } ;
struct rtw_chip_info {int rx_pkt_desc_sz; int rx_buf_desc_sz; TYPE_1__* ops; } ;
struct ieee80211_rx_status {int dummy; } ;
typedef int rx_status ;
typedef int dma_addr_t ;
struct TYPE_3__ {int (* query_rx_desc ) (struct rtw_dev*,int *,struct rtw_rx_pkt_stat*,struct ieee80211_rx_status*) ;} ;


 int DMA_FROM_DEVICE ;
 int RTK_PCI_RXBD_IDX_MPDUQ ;
 int RTK_PCI_RX_BUF_SIZE ;
 size_t RTW_RX_QUEUE_MPDU ;
 scalar_t__ WARN_ONCE (int,char*) ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int ieee80211_rx_irqsafe (int ,struct sk_buff*) ;
 int memcpy (scalar_t__,struct ieee80211_rx_status*,int) ;
 int rtw_fw_c2h_cmd_rx_irqsafe (struct rtw_dev*,int,struct sk_buff*) ;
 int rtw_pci_dma_check (struct rtw_dev*,struct rtw_pci_rx_ring*,int) ;
 int rtw_pci_sync_rx_desc_device (struct rtw_dev*,int ,struct rtw_pci_rx_ring*,int,int) ;
 int rtw_read32 (struct rtw_dev*,int ) ;
 int rtw_rx_stats (struct rtw_dev*,int ,struct sk_buff*) ;
 int rtw_write16 (struct rtw_dev*,int ,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,int *,int) ;
 int stub1 (struct rtw_dev*,int *,struct rtw_rx_pkt_stat*,struct ieee80211_rx_status*) ;

__attribute__((used)) static void rtw_pci_rx_isr(struct rtw_dev *rtwdev, struct rtw_pci *rtwpci,
      u8 hw_queue)
{
 struct rtw_chip_info *chip = rtwdev->chip;
 struct rtw_pci_rx_ring *ring;
 struct rtw_rx_pkt_stat pkt_stat;
 struct ieee80211_rx_status rx_status;
 struct sk_buff *skb, *new;
 u32 cur_wp, cur_rp, tmp;
 u32 count;
 u32 pkt_offset;
 u32 pkt_desc_sz = chip->rx_pkt_desc_sz;
 u32 buf_desc_sz = chip->rx_buf_desc_sz;
 u32 new_len;
 u8 *rx_desc;
 dma_addr_t dma;

 ring = &rtwpci->rx_rings[RTW_RX_QUEUE_MPDU];

 tmp = rtw_read32(rtwdev, RTK_PCI_RXBD_IDX_MPDUQ);
 cur_wp = tmp >> 16;
 cur_wp &= 0xfff;
 if (cur_wp >= ring->r.wp)
  count = cur_wp - ring->r.wp;
 else
  count = ring->r.len - (ring->r.wp - cur_wp);

 cur_rp = ring->r.rp;
 while (count--) {
  rtw_pci_dma_check(rtwdev, ring, cur_rp);
  skb = ring->buf[cur_rp];
  dma = *((dma_addr_t *)skb->cb);
  dma_sync_single_for_cpu(rtwdev->dev, dma, RTK_PCI_RX_BUF_SIZE,
     DMA_FROM_DEVICE);
  rx_desc = skb->data;
  chip->ops->query_rx_desc(rtwdev, rx_desc, &pkt_stat, &rx_status);


  pkt_offset = pkt_desc_sz + pkt_stat.drv_info_sz +
        pkt_stat.shift;




  new_len = pkt_stat.pkt_len + pkt_offset;
  new = dev_alloc_skb(new_len);
  if (WARN_ONCE(!new, "rx routine starvation\n"))
   goto next_rp;


  skb_put_data(new, skb->data, new_len);

  if (pkt_stat.is_c2h) {
   rtw_fw_c2h_cmd_rx_irqsafe(rtwdev, pkt_offset, new);
  } else {

   skb_pull(new, pkt_offset);

   rtw_rx_stats(rtwdev, pkt_stat.vif, new);
   memcpy(new->cb, &rx_status, sizeof(rx_status));
   ieee80211_rx_irqsafe(rtwdev->hw, new);
  }

next_rp:

  rtw_pci_sync_rx_desc_device(rtwdev, dma, ring, cur_rp,
         buf_desc_sz);


  if (++cur_rp >= ring->r.len)
   cur_rp = 0;
 }

 ring->r.rp = cur_rp;
 ring->r.wp = cur_wp;
 rtw_write16(rtwdev, RTK_PCI_RXBD_IDX_MPDUQ, ring->r.rp);
}
