
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int len; } ;
struct rtl_tx_desc {int dummy; } ;
struct rtl_tx_buffer_desc {int dummy; } ;
struct rtl_tcb_desc {int dummy; } ;
struct rtl_priv {TYPE_2__* cfg; scalar_t__ use_new_trx_flow; } ;
struct rtl_pci {int pdev; struct rtl8192_tx_ring* tx_ring; } ;
struct rtl_mac {int vif; } ;
struct rtl8192_tx_ring {size_t idx; int queue; struct rtl_tx_buffer_desc* buffer_desc; struct rtl_tx_desc* desc; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_desc ) (struct ieee80211_hw*,int*,int,int ,int*) ;int (* fill_tx_desc ) (struct ieee80211_hw*,struct ieee80211_hdr*,int*,int*,struct ieee80211_tx_info*,int *,struct sk_buff*,size_t,struct rtl_tcb_desc*) ;int (* get_desc ) (struct ieee80211_hw*,int*,int,int ) ;} ;


 size_t BEACON_QUEUE ;
 int HW_DESC_OWN ;
 int HW_DESC_TXBUFF_ADDR ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int PCI_DMA_TODEVICE ;
 struct sk_buff* __skb_dequeue (int *) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 struct sk_buff* ieee80211_beacon_get (struct ieee80211_hw*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct rtl_tcb_desc*,int ,int) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 struct ieee80211_hdr* rtl_get_hdr (struct sk_buff*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int*,int,int ) ;
 int stub2 (struct ieee80211_hw*,struct ieee80211_hdr*,int*,int*,struct ieee80211_tx_info*,int *,struct sk_buff*,size_t,struct rtl_tcb_desc*) ;
 int stub3 (struct ieee80211_hw*,int*,int,int ,int*) ;
 int stub4 (struct ieee80211_hw*,int*,int,int ,int*) ;

__attribute__((used)) static void _rtl_pci_prepare_bcn_tasklet(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl8192_tx_ring *ring = ((void*)0);
 struct ieee80211_hdr *hdr = ((void*)0);
 struct ieee80211_tx_info *info = ((void*)0);
 struct sk_buff *pskb = ((void*)0);
 struct rtl_tx_desc *pdesc = ((void*)0);
 struct rtl_tcb_desc tcb_desc;

 struct rtl_tx_buffer_desc *pbuffer_desc = ((void*)0);
 u8 temp_one = 1;
 u8 *entry;

 memset(&tcb_desc, 0, sizeof(struct rtl_tcb_desc));
 ring = &rtlpci->tx_ring[BEACON_QUEUE];
 pskb = __skb_dequeue(&ring->queue);
 if (rtlpriv->use_new_trx_flow)
  entry = (u8 *)(&ring->buffer_desc[ring->idx]);
 else
  entry = (u8 *)(&ring->desc[ring->idx]);
 if (pskb) {
  pci_unmap_single(rtlpci->pdev,
     rtlpriv->cfg->ops->get_desc(
     hw, (u8 *)entry, 1, HW_DESC_TXBUFF_ADDR),
     pskb->len, PCI_DMA_TODEVICE);
  kfree_skb(pskb);
 }


 pskb = ieee80211_beacon_get(hw, mac->vif);
 if (!pskb)
  return;
 hdr = rtl_get_hdr(pskb);
 info = IEEE80211_SKB_CB(pskb);
 pdesc = &ring->desc[0];
 if (rtlpriv->use_new_trx_flow)
  pbuffer_desc = &ring->buffer_desc[0];

 rtlpriv->cfg->ops->fill_tx_desc(hw, hdr, (u8 *)pdesc,
     (u8 *)pbuffer_desc, info, ((void*)0), pskb,
     BEACON_QUEUE, &tcb_desc);

 __skb_queue_tail(&ring->queue, pskb);

 if (rtlpriv->use_new_trx_flow) {
  temp_one = 4;
  rtlpriv->cfg->ops->set_desc(hw, (u8 *)pbuffer_desc, 1,
         HW_DESC_OWN, (u8 *)&temp_one);
 } else {
  rtlpriv->cfg->ops->set_desc(hw, (u8 *)pdesc, 1, HW_DESC_OWN,
         &temp_one);
 }
}
