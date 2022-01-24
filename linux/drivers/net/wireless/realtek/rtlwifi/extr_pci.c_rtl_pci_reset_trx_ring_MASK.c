#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct rtl_rx_desc {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  irq_th_lock; } ;
struct rtl_priv {TYPE_4__ locks; scalar_t__ use_new_trx_flow; TYPE_3__* cfg; } ;
struct rtl_pci {int rxringcount; int* txringcount; struct rtl8192_tx_ring* tx_ring; int /*<<< orphan*/  pdev; TYPE_1__* rx_ring; int /*<<< orphan*/  rxbuffersize; } ;
struct rtl8192_tx_ring {size_t idx; int entries; scalar_t__ cur_tx_wp; scalar_t__ cur_tx_rp; int /*<<< orphan*/ * desc; int /*<<< orphan*/ * buffer_desc; int /*<<< orphan*/  queue; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_7__ {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* get_desc ) (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_desc ) (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ,int*) ;} ;
struct TYPE_5__ {scalar_t__ idx; struct rtl_rx_desc* desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_DESC_RXBUFF_ADDR ; 
 int /*<<< orphan*/  HW_DESC_RXERO ; 
 int /*<<< orphan*/  HW_DESC_RXOWN ; 
 int /*<<< orphan*/  HW_DESC_RXPKT_LEN ; 
 int /*<<< orphan*/  HW_DESC_RX_PREPARE ; 
 int /*<<< orphan*/  HW_DESC_TXBUFF_ADDR ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int RTL_PCI_MAX_RX_QUEUE ; 
 int RTL_PCI_MAX_TX_QUEUE_COUNT ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_pci* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ) ; 

int FUNC17(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_pci *rtlpci = FUNC4(FUNC5(hw));
	int i, rxring_idx;
	unsigned long flags;
	u8 tmp_one = 1;
	u32 bufferaddress;
	/* rxring_idx 0:RX_MPDU_QUEUE */
	/* rxring_idx 1:RX_CMD_QUEUE */
	for (rxring_idx = 0; rxring_idx < RTL_PCI_MAX_RX_QUEUE; rxring_idx++) {
		/* force the rx_ring[RX_MPDU_QUEUE/
		 * RX_CMD_QUEUE].idx to the first one
		 *new trx flow, do nothing
		 */
		if (!rtlpriv->use_new_trx_flow &&
		    rtlpci->rx_ring[rxring_idx].desc) {
			struct rtl_rx_desc *entry = NULL;

			rtlpci->rx_ring[rxring_idx].idx = 0;
			for (i = 0; i < rtlpci->rxringcount; i++) {
				entry = &rtlpci->rx_ring[rxring_idx].desc[i];
				bufferaddress =
				  rtlpriv->cfg->ops->get_desc(hw, (u8 *)entry,
				  false, HW_DESC_RXBUFF_ADDR);
				FUNC2((u8 *)entry, 0,
				       sizeof(*rtlpci->rx_ring
				       [rxring_idx].desc));/*clear one entry*/
				if (rtlpriv->use_new_trx_flow) {
					rtlpriv->cfg->ops->set_desc(hw,
					    (u8 *)entry, false,
					    HW_DESC_RX_PREPARE,
					    (u8 *)&bufferaddress);
				} else {
					rtlpriv->cfg->ops->set_desc(hw,
					    (u8 *)entry, false,
					    HW_DESC_RXBUFF_ADDR,
					    (u8 *)&bufferaddress);
					rtlpriv->cfg->ops->set_desc(hw,
					    (u8 *)entry, false,
					    HW_DESC_RXPKT_LEN,
					    (u8 *)&rtlpci->rxbuffersize);
					rtlpriv->cfg->ops->set_desc(hw,
					    (u8 *)entry, false,
					    HW_DESC_RXOWN,
					    (u8 *)&tmp_one);
				}
			}
			rtlpriv->cfg->ops->set_desc(hw, (u8 *)entry, false,
					    HW_DESC_RXERO, (u8 *)&tmp_one);
		}
		rtlpci->rx_ring[rxring_idx].idx = 0;
	}

	/*after reset, release previous pending packet,
	 *and force the  tx idx to the first one
	 */
	FUNC8(&rtlpriv->locks.irq_th_lock, flags);
	for (i = 0; i < RTL_PCI_MAX_TX_QUEUE_COUNT; i++) {
		if (rtlpci->tx_ring[i].desc ||
		    rtlpci->tx_ring[i].buffer_desc) {
			struct rtl8192_tx_ring *ring = &rtlpci->tx_ring[i];

			while (FUNC7(&ring->queue)) {
				u8 *entry;
				struct sk_buff *skb =
					FUNC0(&ring->queue);
				if (rtlpriv->use_new_trx_flow)
					entry = (u8 *)(&ring->buffer_desc
								[ring->idx]);
				else
					entry = (u8 *)(&ring->desc[ring->idx]);

				FUNC3(rtlpci->pdev,
						 rtlpriv->cfg->ops->
							 get_desc(hw, (u8 *)
							 entry,
							 true,
							 HW_DESC_TXBUFF_ADDR),
						 skb->len, PCI_DMA_TODEVICE);
				FUNC1(skb);
				ring->idx = (ring->idx + 1) % ring->entries;
			}

			if (rtlpriv->use_new_trx_flow) {
				rtlpci->tx_ring[i].cur_tx_rp = 0;
				rtlpci->tx_ring[i].cur_tx_wp = 0;
			}

			ring->idx = 0;
			ring->entries = rtlpci->txringcount[i];
		}
	}
	FUNC9(&rtlpriv->locks.irq_th_lock, flags);

	return 0;
}