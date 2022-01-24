#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct rtl_tx_desc {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq_th_lock; } ;
struct rtl_priv {TYPE_3__ locks; TYPE_2__* cfg; } ;
struct rtl_pci {int /*<<< orphan*/  pdev; struct rtl8192_tx_ring* tx_ring; } ;
struct rtl8192_tx_ring {size_t idx; int entries; int /*<<< orphan*/  queue; struct rtl_tx_desc* desc; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_desc ) (struct ieee80211_hw*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t BEACON_QUEUE ; 
 int /*<<< orphan*/  HW_DESC_TXBUFF_ADDR ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rtl_pci* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_pci *rtlpci = FUNC3(FUNC4(hw));
	struct rtl8192_tx_ring *ring = &rtlpci->tx_ring[BEACON_QUEUE];
	unsigned long flags;

	FUNC7(&rtlpriv->locks.irq_th_lock, flags);
	while (FUNC6(&ring->queue)) {
		struct rtl_tx_desc *entry = &ring->desc[ring->idx];
		struct sk_buff *skb = FUNC0(&ring->queue);

		FUNC2(rtlpci->pdev,
				 rtlpriv->cfg->ops->get_desc(
				 hw,
				 (u8 *)entry, true, HW_DESC_TXBUFF_ADDR),
				 skb->len, PCI_DMA_TODEVICE);
		FUNC1(skb);
		ring->idx = (ring->idx + 1) % ring->entries;
	}
	FUNC8(&rtlpriv->locks.irq_th_lock, flags);
}