
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u16 ;
struct sk_buff {int len; } ;
struct rtl_tx_desc {int dummy; } ;
struct rtl_tx_buffer_desc {int dummy; } ;
struct rtl_tcb_desc {int dummy; } ;
struct TYPE_8__ {int irq_th_lock; } ;
struct TYPE_7__ {int txbytesunicast; int txbytesbroadcast; int txbytesmulticast; } ;
struct TYPE_6__ {scalar_t__ sw_ps_enabled; } ;
struct rtl_priv {TYPE_5__* cfg; TYPE_3__ locks; scalar_t__ use_new_trx_flow; TYPE_2__ stats; TYPE_1__ psc; } ;
struct rtl_pci {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl8192_tx_ring {size_t cur_tx_wp; int idx; int entries; int queue; struct rtl_tx_buffer_desc* buffer_desc; struct rtl_tx_desc* desc; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {size_t* addr1; int frame_control; } ;
typedef int __le16 ;
struct TYPE_10__ {TYPE_4__* ops; } ;
struct TYPE_9__ {scalar_t__ (* get_available_desc ) (struct ieee80211_hw*,size_t) ;int (* tx_polling ) (struct ieee80211_hw*,size_t) ;int (* set_desc ) (struct ieee80211_hw*,size_t*,int,int ,size_t*) ;int (* fill_tx_desc ) (struct ieee80211_hw*,struct ieee80211_hdr*,size_t*,size_t*,struct ieee80211_tx_info*,struct ieee80211_sta*,struct sk_buff*,size_t,struct rtl_tcb_desc*) ;int (* led_control ) (struct ieee80211_hw*,int ) ;scalar_t__ (* get_desc ) (struct ieee80211_hw*,size_t*,int,int ) ;} ;


 size_t BEACON_QUEUE ;
 int COMP_ERR ;
 int DBG_LOUD ;
 int DBG_WARNING ;
 int HW_DESC_OWN ;
 int IEEE80211_FCTL_PM ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int LED_CTL_TX ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 size_t _rtl_mac_to_hwqueue (struct ieee80211_hw*,struct sk_buff*) ;
 int cpu_to_le16 (int ) ;
 int ieee80211_has_pm (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;
 int ieee80211_is_nullfunc (int ) ;
 int ieee80211_stop_queue (struct ieee80211_hw*,int ) ;
 scalar_t__ is_broadcast_ether_addr (size_t*) ;
 scalar_t__ is_multicast_ether_addr (size_t*) ;
 int rtl_action_proc (struct ieee80211_hw*,struct sk_buff*,int) ;
 int rtl_get_fc (struct sk_buff*) ;
 struct ieee80211_hdr* rtl_get_hdr (struct sk_buff*) ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_tx_mgmt_proc (struct ieee80211_hw*,struct sk_buff*) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int skb_queue_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (struct ieee80211_hw*,size_t*,int,int ) ;
 scalar_t__ stub2 (struct ieee80211_hw*,size_t) ;
 int stub3 (struct ieee80211_hw*,int ) ;
 int stub4 (struct ieee80211_hw*,struct ieee80211_hdr*,size_t*,size_t*,struct ieee80211_tx_info*,struct ieee80211_sta*,struct sk_buff*,size_t,struct rtl_tcb_desc*) ;
 int stub5 (struct ieee80211_hw*,size_t*,int,int ,size_t*) ;
 int stub6 (struct ieee80211_hw*,size_t*,int,int ,size_t*) ;
 int stub7 (struct ieee80211_hw*,size_t) ;

__attribute__((used)) static int rtl_pci_tx(struct ieee80211_hw *hw,
        struct ieee80211_sta *sta,
        struct sk_buff *skb,
        struct rtl_tcb_desc *ptcb_desc)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct rtl8192_tx_ring *ring;
 struct rtl_tx_desc *pdesc;
 struct rtl_tx_buffer_desc *ptx_bd_desc = ((void*)0);
 u16 idx;
 u8 hw_queue = _rtl_mac_to_hwqueue(hw, skb);
 unsigned long flags;
 struct ieee80211_hdr *hdr = rtl_get_hdr(skb);
 __le16 fc = rtl_get_fc(skb);
 u8 *pda_addr = hdr->addr1;
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 u8 own;
 u8 temp_one = 1;

 if (ieee80211_is_mgmt(fc))
  rtl_tx_mgmt_proc(hw, skb);

 if (rtlpriv->psc.sw_ps_enabled) {
  if (ieee80211_is_data(fc) && !ieee80211_is_nullfunc(fc) &&
      !ieee80211_has_pm(fc))
   hdr->frame_control |= cpu_to_le16(IEEE80211_FCTL_PM);
 }

 rtl_action_proc(hw, skb, 1);

 if (is_multicast_ether_addr(pda_addr))
  rtlpriv->stats.txbytesmulticast += skb->len;
 else if (is_broadcast_ether_addr(pda_addr))
  rtlpriv->stats.txbytesbroadcast += skb->len;
 else
  rtlpriv->stats.txbytesunicast += skb->len;

 spin_lock_irqsave(&rtlpriv->locks.irq_th_lock, flags);
 ring = &rtlpci->tx_ring[hw_queue];
 if (hw_queue != BEACON_QUEUE) {
  if (rtlpriv->use_new_trx_flow)
   idx = ring->cur_tx_wp;
  else
   idx = (ring->idx + skb_queue_len(&ring->queue)) %
         ring->entries;
 } else {
  idx = 0;
 }

 pdesc = &ring->desc[idx];
 if (rtlpriv->use_new_trx_flow) {
  ptx_bd_desc = &ring->buffer_desc[idx];
 } else {
  own = (u8)rtlpriv->cfg->ops->get_desc(hw, (u8 *)pdesc,
    1, HW_DESC_OWN);

  if (own == 1 && hw_queue != BEACON_QUEUE) {
   RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
     "No more TX desc@%d, ring->idx = %d, idx = %d, skb_queue_len = 0x%x\n",
     hw_queue, ring->idx, idx,
     skb_queue_len(&ring->queue));

   spin_unlock_irqrestore(&rtlpriv->locks.irq_th_lock,
            flags);
   return skb->len;
  }
 }

 if (rtlpriv->cfg->ops->get_available_desc &&
     rtlpriv->cfg->ops->get_available_desc(hw, hw_queue) == 0) {
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
    "get_available_desc fail\n");
  spin_unlock_irqrestore(&rtlpriv->locks.irq_th_lock, flags);
  return skb->len;
 }

 if (ieee80211_is_data(fc))
  rtlpriv->cfg->ops->led_control(hw, LED_CTL_TX);

 rtlpriv->cfg->ops->fill_tx_desc(hw, hdr, (u8 *)pdesc,
   (u8 *)ptx_bd_desc, info, sta, skb, hw_queue, ptcb_desc);

 __skb_queue_tail(&ring->queue, skb);

 if (rtlpriv->use_new_trx_flow) {
  rtlpriv->cfg->ops->set_desc(hw, (u8 *)pdesc, 1,
         HW_DESC_OWN, &hw_queue);
 } else {
  rtlpriv->cfg->ops->set_desc(hw, (u8 *)pdesc, 1,
         HW_DESC_OWN, &temp_one);
 }

 if ((ring->entries - skb_queue_len(&ring->queue)) < 2 &&
     hw_queue != BEACON_QUEUE) {
  RT_TRACE(rtlpriv, COMP_ERR, DBG_LOUD,
    "less desc left, stop skb_queue@%d, ring->idx = %d, idx = %d, skb_queue_len = 0x%x\n",
    hw_queue, ring->idx, idx,
    skb_queue_len(&ring->queue));

  ieee80211_stop_queue(hw, skb_get_queue_mapping(skb));
 }

 spin_unlock_irqrestore(&rtlpriv->locks.irq_th_lock, flags);

 rtlpriv->cfg->ops->tx_polling(hw, hw_queue);

 return 0;
}
