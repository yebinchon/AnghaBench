#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  size_t u16 ;
struct sk_buff {int len; } ;
struct rtl_tx_desc {int dummy; } ;
struct rtl_tx_buffer_desc {int dummy; } ;
struct rtl_tcb_desc {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  irq_th_lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  txbytesunicast; int /*<<< orphan*/  txbytesbroadcast; int /*<<< orphan*/  txbytesmulticast; } ;
struct TYPE_6__ {scalar_t__ sw_ps_enabled; } ;
struct rtl_priv {TYPE_5__* cfg; TYPE_3__ locks; scalar_t__ use_new_trx_flow; TYPE_2__ stats; TYPE_1__ psc; } ;
struct rtl_pci {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl8192_tx_ring {size_t cur_tx_wp; int idx; int entries; int /*<<< orphan*/  queue; struct rtl_tx_buffer_desc* buffer_desc; struct rtl_tx_desc* desc; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {size_t* addr1; int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_10__ {TYPE_4__* ops; } ;
struct TYPE_9__ {scalar_t__ (* get_available_desc ) (struct ieee80211_hw*,size_t) ;int /*<<< orphan*/  (* tx_polling ) (struct ieee80211_hw*,size_t) ;int /*<<< orphan*/  (* set_desc ) (struct ieee80211_hw*,size_t*,int,int /*<<< orphan*/ ,size_t*) ;int /*<<< orphan*/  (* fill_tx_desc ) (struct ieee80211_hw*,struct ieee80211_hdr*,size_t*,size_t*,struct ieee80211_tx_info*,struct ieee80211_sta*,struct sk_buff*,size_t,struct rtl_tcb_desc*) ;int /*<<< orphan*/  (* led_control ) (struct ieee80211_hw*,int /*<<< orphan*/ ) ;scalar_t__ (* get_desc ) (struct ieee80211_hw*,size_t*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t BEACON_QUEUE ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_WARNING ; 
 int /*<<< orphan*/  HW_DESC_OWN ; 
 int /*<<< orphan*/  IEEE80211_FCTL_PM ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  LED_CTL_TX ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 size_t FUNC3 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (size_t*) ; 
 scalar_t__ FUNC11 (size_t*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 struct ieee80211_hdr* FUNC14 (struct sk_buff*) ; 
 struct rtl_pci* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC17 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_hw*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 int FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC23 (struct ieee80211_hw*,size_t*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct ieee80211_hw*,size_t) ; 
 int /*<<< orphan*/  FUNC25 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct ieee80211_hw*,struct ieee80211_hdr*,size_t*,size_t*,struct ieee80211_tx_info*,struct ieee80211_sta*,struct sk_buff*,size_t,struct rtl_tcb_desc*) ; 
 int /*<<< orphan*/  FUNC27 (struct ieee80211_hw*,size_t*,int,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC28 (struct ieee80211_hw*,size_t*,int,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC29 (struct ieee80211_hw*,size_t) ; 

__attribute__((used)) static int FUNC30(struct ieee80211_hw *hw,
		      struct ieee80211_sta *sta,
		      struct sk_buff *skb,
		      struct rtl_tcb_desc *ptcb_desc)
{
	struct rtl_priv *rtlpriv = FUNC17(hw);
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct rtl8192_tx_ring *ring;
	struct rtl_tx_desc *pdesc;
	struct rtl_tx_buffer_desc *ptx_bd_desc = NULL;
	u16 idx;
	u8 hw_queue = FUNC3(hw, skb);
	unsigned long flags;
	struct ieee80211_hdr *hdr = FUNC14(skb);
	__le16 fc = FUNC13(skb);
	u8 *pda_addr = hdr->addr1;
	struct rtl_pci *rtlpci = FUNC15(FUNC16(hw));
	u8 own;
	u8 temp_one = 1;

	if (FUNC7(fc))
		FUNC18(hw, skb);

	if (rtlpriv->psc.sw_ps_enabled) {
		if (FUNC6(fc) && !FUNC8(fc) &&
		    !FUNC5(fc))
			hdr->frame_control |= FUNC4(IEEE80211_FCTL_PM);
	}

	FUNC12(hw, skb, true);

	if (FUNC11(pda_addr))
		rtlpriv->stats.txbytesmulticast += skb->len;
	else if (FUNC10(pda_addr))
		rtlpriv->stats.txbytesbroadcast += skb->len;
	else
		rtlpriv->stats.txbytesunicast += skb->len;

	FUNC21(&rtlpriv->locks.irq_th_lock, flags);
	ring = &rtlpci->tx_ring[hw_queue];
	if (hw_queue != BEACON_QUEUE) {
		if (rtlpriv->use_new_trx_flow)
			idx = ring->cur_tx_wp;
		else
			idx = (ring->idx + FUNC20(&ring->queue)) %
			      ring->entries;
	} else {
		idx = 0;
	}

	pdesc = &ring->desc[idx];
	if (rtlpriv->use_new_trx_flow) {
		ptx_bd_desc = &ring->buffer_desc[idx];
	} else {
		own = (u8)rtlpriv->cfg->ops->get_desc(hw, (u8 *)pdesc,
				true, HW_DESC_OWN);

		if (own == 1 && hw_queue != BEACON_QUEUE) {
			FUNC1(rtlpriv, COMP_ERR, DBG_WARNING,
				 "No more TX desc@%d, ring->idx = %d, idx = %d, skb_queue_len = 0x%x\n",
				 hw_queue, ring->idx, idx,
				 FUNC20(&ring->queue));

			FUNC22(&rtlpriv->locks.irq_th_lock,
					       flags);
			return skb->len;
		}
	}

	if (rtlpriv->cfg->ops->get_available_desc &&
	    rtlpriv->cfg->ops->get_available_desc(hw, hw_queue) == 0) {
		FUNC1(rtlpriv, COMP_ERR, DBG_WARNING,
			 "get_available_desc fail\n");
		FUNC22(&rtlpriv->locks.irq_th_lock, flags);
		return skb->len;
	}

	if (FUNC6(fc))
		rtlpriv->cfg->ops->led_control(hw, LED_CTL_TX);

	rtlpriv->cfg->ops->fill_tx_desc(hw, hdr, (u8 *)pdesc,
			(u8 *)ptx_bd_desc, info, sta, skb, hw_queue, ptcb_desc);

	FUNC2(&ring->queue, skb);

	if (rtlpriv->use_new_trx_flow) {
		rtlpriv->cfg->ops->set_desc(hw, (u8 *)pdesc, true,
					    HW_DESC_OWN, &hw_queue);
	} else {
		rtlpriv->cfg->ops->set_desc(hw, (u8 *)pdesc, true,
					    HW_DESC_OWN, &temp_one);
	}

	if ((ring->entries - FUNC20(&ring->queue)) < 2 &&
	    hw_queue != BEACON_QUEUE) {
		FUNC1(rtlpriv, COMP_ERR, DBG_LOUD,
			 "less desc left, stop skb_queue@%d, ring->idx = %d, idx = %d, skb_queue_len = 0x%x\n",
			 hw_queue, ring->idx, idx,
			 FUNC20(&ring->queue));

		FUNC9(hw, FUNC19(skb));
	}

	FUNC22(&rtlpriv->locks.irq_th_lock, flags);

	rtlpriv->cfg->ops->tx_polling(hw, hw_queue);

	return 0;
}