
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ end; scalar_t__ tail; scalar_t__ len; scalar_t__ data; scalar_t__ cb; } ;
struct rtl_stats {scalar_t__ packet_report_type; int hwerror; int crc; scalar_t__ rx_bufshift; scalar_t__ rx_drvinfo_size; int rate; int signal; } ;
struct rtl_rx_desc {int dummy; } ;
struct rtl_rx_buffer_desc {int dummy; } ;
struct TYPE_11__ {int num_rx_inperiod; int num_tx_inperiod; } ;
struct TYPE_10__ {scalar_t__ current_bandtype; } ;
struct TYPE_9__ {scalar_t__ opmode; } ;
struct TYPE_8__ {int rxbytesunicast; } ;
struct rtl_priv {TYPE_7__* cfg; scalar_t__ use_new_trx_flow; TYPE_4__ link_info; TYPE_3__ rtlhal; TYPE_2__ mac80211; TYPE_1__ stats; } ;
struct rtl_pci {unsigned int rxringcount; TYPE_5__* rx_ring; int rxbuffersize; int pdev; } ;
struct ieee80211_rx_status {int member_0; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int addr1; } ;
typedef int rx_status ;
typedef int dma_addr_t ;
typedef int __le16 ;
struct TYPE_14__ {TYPE_6__* ops; } ;
struct TYPE_13__ {unsigned int (* rx_desc_buff_remained_cnt ) (struct ieee80211_hw*,size_t) ;scalar_t__ (* get_desc ) (struct ieee80211_hw*,size_t*,int,int ) ;int (* set_desc ) (struct ieee80211_hw*,size_t*,int,int ,size_t*) ;int (* led_control ) (struct ieee80211_hw*,int ) ;int (* rx_check_dma_ok ) (struct ieee80211_hw*,size_t*,size_t) ;int (* query_rx_desc ) (struct ieee80211_hw*,struct rtl_stats*,struct ieee80211_rx_status*,size_t*,struct sk_buff*) ;} ;
struct TYPE_12__ {size_t idx; int next_rx_rp; struct rtl_rx_desc* desc; struct rtl_rx_buffer_desc* buffer_desc; struct sk_buff** rx_buf; } ;


 scalar_t__ BAND_ON_2_4G ;
 scalar_t__ C2H_PACKET ;
 int COMP_ERR ;
 int DBG_WARNING ;
 scalar_t__ FCS_LEN ;
 int HW_DESC_OWN ;
 int HW_DESC_RXERO ;
 int HW_DESC_RXPKT_LEN ;
 int IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int LED_CTL_RX ;
 scalar_t__ NL80211_IFTYPE_AP ;
 int PCI_DMA_FROMDEVICE ;
 int RTL_PCI_MAX_RX_COUNT ;
 int RTL_PCI_RX_MPDU_QUEUE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,scalar_t__,scalar_t__) ;
 int _rtl_pci_init_one_rxdesc (struct ieee80211_hw*,struct sk_buff*,size_t*,int,int) ;
 int _rtl_pci_rx_to_mac80211 (struct ieee80211_hw*,struct sk_buff*,struct ieee80211_rx_status) ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ ieee80211_is_beacon (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_probe_resp (int ) ;
 scalar_t__ is_broadcast_ether_addr (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int memcpy (int ,struct ieee80211_rx_status*,int) ;
 int memset (struct ieee80211_rx_status*,int ,int) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int rtl_beacon_statistic (struct ieee80211_hw*,struct sk_buff*) ;
 int rtl_c2hcmd_enqueue (struct ieee80211_hw*,struct sk_buff*) ;
 int rtl_collect_scan_list (struct ieee80211_hw*,struct sk_buff*) ;
 int rtl_get_fc (struct sk_buff*) ;
 struct ieee80211_hdr* rtl_get_hdr (struct sk_buff*) ;
 int rtl_is_special_data (struct ieee80211_hw*,struct sk_buff*,int,int) ;
 int rtl_lps_leave (struct ieee80211_hw*) ;
 int rtl_p2p_info (struct ieee80211_hw*,void*,scalar_t__) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_recognize_peer (struct ieee80211_hw*,void*,scalar_t__) ;
 int rtl_swlps_beacon (struct ieee80211_hw*,void*,scalar_t__) ;
 int rtl_write_word (struct rtl_priv*,int,int) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 unsigned int stub1 (struct ieee80211_hw*,size_t) ;
 scalar_t__ stub2 (struct ieee80211_hw*,size_t*,int,int ) ;
 int stub3 (struct ieee80211_hw*,struct rtl_stats*,struct ieee80211_rx_status*,size_t*,struct sk_buff*) ;
 int stub4 (struct ieee80211_hw*,size_t*,size_t) ;
 scalar_t__ stub5 (struct ieee80211_hw*,size_t*,int,int ) ;
 int stub6 (struct ieee80211_hw*,int ) ;
 int stub7 (struct ieee80211_hw*,size_t*,int,int ,size_t*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void _rtl_pci_rx_interrupt(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 int rxring_idx = RTL_PCI_RX_MPDU_QUEUE;
 struct ieee80211_rx_status rx_status = { 0 };
 unsigned int count = rtlpci->rxringcount;
 u8 own;
 u8 tmp_one;
 bool unicast = 0;
 u8 hw_queue = 0;
 unsigned int rx_remained_cnt = 0;
 struct rtl_stats stats = {
  .signal = 0,
  .rate = 0,
 };


 while (count--) {
  struct ieee80211_hdr *hdr;
  __le16 fc;
  u16 len;

  struct rtl_rx_buffer_desc *buffer_desc = ((void*)0);

  struct rtl_rx_desc *pdesc = ((void*)0);

  struct sk_buff *skb = rtlpci->rx_ring[rxring_idx].rx_buf[
          rtlpci->rx_ring[rxring_idx].idx];
  struct sk_buff *new_skb;

  if (rtlpriv->use_new_trx_flow) {
   if (rx_remained_cnt == 0)
    rx_remained_cnt =
    rtlpriv->cfg->ops->rx_desc_buff_remained_cnt(hw,
              hw_queue);
   if (rx_remained_cnt == 0)
    return;
   buffer_desc = &rtlpci->rx_ring[rxring_idx].buffer_desc[
    rtlpci->rx_ring[rxring_idx].idx];
   pdesc = (struct rtl_rx_desc *)skb->data;
  } else {
   pdesc = &rtlpci->rx_ring[rxring_idx].desc[
    rtlpci->rx_ring[rxring_idx].idx];

   own = (u8)rtlpriv->cfg->ops->get_desc(hw, (u8 *)pdesc,
             0,
             HW_DESC_OWN);
   if (own)
    return;
  }





  pci_unmap_single(rtlpci->pdev, *((dma_addr_t *)skb->cb),
     rtlpci->rxbuffersize, PCI_DMA_FROMDEVICE);


  new_skb = dev_alloc_skb(rtlpci->rxbuffersize);
  if (unlikely(!new_skb))
   goto no_new;
  memset(&rx_status, 0, sizeof(rx_status));
  rtlpriv->cfg->ops->query_rx_desc(hw, &stats,
       &rx_status, (u8 *)pdesc, skb);

  if (rtlpriv->use_new_trx_flow)
   rtlpriv->cfg->ops->rx_check_dma_ok(hw,
          (u8 *)buffer_desc,
          hw_queue);

  len = rtlpriv->cfg->ops->get_desc(hw, (u8 *)pdesc, 0,
        HW_DESC_RXPKT_LEN);

  if (skb->end - skb->tail > len) {
   skb_put(skb, len);
   if (rtlpriv->use_new_trx_flow)
    skb_reserve(skb, stats.rx_drvinfo_size +
         stats.rx_bufshift + 24);
   else
    skb_reserve(skb, stats.rx_drvinfo_size +
         stats.rx_bufshift);
  } else {
   RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
     "skb->end - skb->tail = %d, len is %d\n",
     skb->end - skb->tail, len);
   dev_kfree_skb_any(skb);
   goto new_trx_end;
  }

  if (stats.packet_report_type == C2H_PACKET) {
   rtl_c2hcmd_enqueue(hw, skb);
   goto new_trx_end;
  }







  hdr = rtl_get_hdr(skb);
  fc = rtl_get_fc(skb);

  if (!stats.crc && !stats.hwerror && (skb->len > FCS_LEN)) {
   memcpy(IEEE80211_SKB_RXCB(skb), &rx_status,
          sizeof(rx_status));

   if (is_broadcast_ether_addr(hdr->addr1)) {
    ;
   } else if (is_multicast_ether_addr(hdr->addr1)) {
    ;
   } else {
    unicast = 1;
    rtlpriv->stats.rxbytesunicast += skb->len;
   }
   rtl_is_special_data(hw, skb, 0, 1);

   if (ieee80211_is_data(fc)) {
    rtlpriv->cfg->ops->led_control(hw, LED_CTL_RX);
    if (unicast)
     rtlpriv->link_info.num_rx_inperiod++;
   }

   rtl_collect_scan_list(hw, skb);


   rtl_beacon_statistic(hw, skb);
   rtl_p2p_info(hw, (void *)skb->data, skb->len);

   rtl_swlps_beacon(hw, (void *)skb->data, skb->len);
   rtl_recognize_peer(hw, (void *)skb->data, skb->len);
   if (rtlpriv->mac80211.opmode == NL80211_IFTYPE_AP &&
       rtlpriv->rtlhal.current_bandtype == BAND_ON_2_4G &&
       (ieee80211_is_beacon(fc) ||
        ieee80211_is_probe_resp(fc))) {
    dev_kfree_skb_any(skb);
   } else {
    _rtl_pci_rx_to_mac80211(hw, skb, rx_status);
   }
  } else {

   dev_kfree_skb_any(skb);
  }
new_trx_end:
  if (rtlpriv->use_new_trx_flow) {
   rtlpci->rx_ring[hw_queue].next_rx_rp += 1;
   rtlpci->rx_ring[hw_queue].next_rx_rp %=
     RTL_PCI_MAX_RX_COUNT;

   rx_remained_cnt--;
   rtl_write_word(rtlpriv, 0x3B4,
           rtlpci->rx_ring[hw_queue].next_rx_rp);
  }
  if (((rtlpriv->link_info.num_rx_inperiod +
        rtlpriv->link_info.num_tx_inperiod) > 8) ||
        rtlpriv->link_info.num_rx_inperiod > 2)
   rtl_lps_leave(hw);
  skb = new_skb;
no_new:
  if (rtlpriv->use_new_trx_flow) {
   _rtl_pci_init_one_rxdesc(hw, skb, (u8 *)buffer_desc,
       rxring_idx,
       rtlpci->rx_ring[rxring_idx].idx);
  } else {
   _rtl_pci_init_one_rxdesc(hw, skb, (u8 *)pdesc,
       rxring_idx,
       rtlpci->rx_ring[rxring_idx].idx);
   if (rtlpci->rx_ring[rxring_idx].idx ==
       rtlpci->rxringcount - 1)
    rtlpriv->cfg->ops->set_desc(hw, (u8 *)pdesc,
           0,
           HW_DESC_RXERO,
           (u8 *)&tmp_one);
  }
  rtlpci->rx_ring[rxring_idx].idx =
    (rtlpci->rx_ring[rxring_idx].idx + 1) %
    rtlpci->rxringcount;
 }
}
