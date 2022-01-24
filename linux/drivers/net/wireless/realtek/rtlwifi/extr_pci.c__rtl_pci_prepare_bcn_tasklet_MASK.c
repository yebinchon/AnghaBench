#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct rtl_tx_desc {int dummy; } ;
struct rtl_tx_buffer_desc {int dummy; } ;
struct rtl_tcb_desc {int dummy; } ;
struct rtl_priv {TYPE_2__* cfg; scalar_t__ use_new_trx_flow; } ;
struct rtl_pci {int /*<<< orphan*/  pdev; struct rtl8192_tx_ring* tx_ring; } ;
struct rtl_mac {int /*<<< orphan*/  vif; } ;
struct rtl8192_tx_ring {size_t idx; int /*<<< orphan*/  queue; struct rtl_tx_buffer_desc* buffer_desc; struct rtl_tx_desc* desc; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_desc ) (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ,int*) ;int /*<<< orphan*/  (* fill_tx_desc ) (struct ieee80211_hw*,struct ieee80211_hdr*,int*,int*,struct ieee80211_tx_info*,int /*<<< orphan*/ *,struct sk_buff*,size_t,struct rtl_tcb_desc*) ;int /*<<< orphan*/  (* get_desc ) (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t BEACON_QUEUE ; 
 int /*<<< orphan*/  HW_DESC_OWN ; 
 int /*<<< orphan*/  HW_DESC_TXBUFF_ADDR ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_tcb_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_hdr* FUNC7 (struct sk_buff*) ; 
 struct rtl_mac* FUNC8 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC11 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_hw*,struct ieee80211_hdr*,int*,int*,struct ieee80211_tx_info*,int /*<<< orphan*/ *,struct sk_buff*,size_t,struct rtl_tcb_desc*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC16(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC11(hw);
	struct rtl_pci *rtlpci = FUNC9(FUNC10(hw));
	struct rtl_mac *mac = FUNC8(FUNC11(hw));
	struct rtl8192_tx_ring *ring = NULL;
	struct ieee80211_hdr *hdr = NULL;
	struct ieee80211_tx_info *info = NULL;
	struct sk_buff *pskb = NULL;
	struct rtl_tx_desc *pdesc = NULL;
	struct rtl_tcb_desc tcb_desc;
	/*This is for new trx flow*/
	struct rtl_tx_buffer_desc *pbuffer_desc = NULL;
	u8 temp_one = 1;
	u8 *entry;

	FUNC5(&tcb_desc, 0, sizeof(struct rtl_tcb_desc));
	ring = &rtlpci->tx_ring[BEACON_QUEUE];
	pskb = FUNC1(&ring->queue);
	if (rtlpriv->use_new_trx_flow)
		entry = (u8 *)(&ring->buffer_desc[ring->idx]);
	else
		entry = (u8 *)(&ring->desc[ring->idx]);
	if (pskb) {
		FUNC6(rtlpci->pdev,
				 rtlpriv->cfg->ops->get_desc(
				 hw, (u8 *)entry, true, HW_DESC_TXBUFF_ADDR),
				 pskb->len, PCI_DMA_TODEVICE);
		FUNC4(pskb);
	}

	/*NB: the beacon data buffer must be 32-bit aligned. */
	pskb = FUNC3(hw, mac->vif);
	if (!pskb)
		return;
	hdr = FUNC7(pskb);
	info = FUNC0(pskb);
	pdesc = &ring->desc[0];
	if (rtlpriv->use_new_trx_flow)
		pbuffer_desc = &ring->buffer_desc[0];

	rtlpriv->cfg->ops->fill_tx_desc(hw, hdr, (u8 *)pdesc,
					(u8 *)pbuffer_desc, info, NULL, pskb,
					BEACON_QUEUE, &tcb_desc);

	FUNC2(&ring->queue, pskb);

	if (rtlpriv->use_new_trx_flow) {
		temp_one = 4;
		rtlpriv->cfg->ops->set_desc(hw, (u8 *)pbuffer_desc, true,
					    HW_DESC_OWN, (u8 *)&temp_one);
	} else {
		rtlpriv->cfg->ops->set_desc(hw, (u8 *)pdesc, true, HW_DESC_OWN,
					    &temp_one);
	}
}