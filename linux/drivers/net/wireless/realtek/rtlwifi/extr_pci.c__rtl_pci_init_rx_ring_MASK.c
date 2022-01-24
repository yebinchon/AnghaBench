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
typedef  int ulong ;
typedef  int u8 ;
struct rtl_rx_desc {int dummy; } ;
struct rtl_rx_buffer_desc {int dummy; } ;
struct rtl_priv {TYPE_3__* cfg; scalar_t__ use_new_trx_flow; } ;
struct rtl_pci {int rxringcount; TYPE_1__* rx_ring; int /*<<< orphan*/  pdev; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_desc ) (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ,int*) ;} ;
struct TYPE_4__ {struct rtl_rx_desc* desc; scalar_t__ idx; int /*<<< orphan*/  dma; struct rtl_rx_buffer_desc* buffer_desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HW_DESC_RXERO ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ *,int*,int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct rtl_pci* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int*,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw, int rxring_idx)
{
	struct rtl_pci *rtlpci = FUNC3(FUNC4(hw));
	struct rtl_priv *rtlpriv = FUNC5(hw);
	int i;

	if (rtlpriv->use_new_trx_flow) {
		struct rtl_rx_buffer_desc *entry = NULL;
		/* alloc dma for this ring */
		rtlpci->rx_ring[rxring_idx].buffer_desc =
		    FUNC1(rtlpci->pdev,
					  sizeof(*rtlpci->rx_ring[rxring_idx].
						 buffer_desc) *
						 rtlpci->rxringcount,
					  &rtlpci->rx_ring[rxring_idx].dma);
		if (!rtlpci->rx_ring[rxring_idx].buffer_desc ||
		    (ulong)rtlpci->rx_ring[rxring_idx].buffer_desc & 0xFF) {
			FUNC2("Cannot allocate RX ring\n");
			return -ENOMEM;
		}

		/* init every desc in this ring */
		rtlpci->rx_ring[rxring_idx].idx = 0;
		for (i = 0; i < rtlpci->rxringcount; i++) {
			entry = &rtlpci->rx_ring[rxring_idx].buffer_desc[i];
			if (!FUNC0(hw, NULL, (u8 *)entry,
						      rxring_idx, i))
				return -ENOMEM;
		}
	} else {
		struct rtl_rx_desc *entry = NULL;
		u8 tmp_one = 1;
		/* alloc dma for this ring */
		rtlpci->rx_ring[rxring_idx].desc =
		    FUNC1(rtlpci->pdev,
					  sizeof(*rtlpci->rx_ring[rxring_idx].
					  desc) * rtlpci->rxringcount,
					  &rtlpci->rx_ring[rxring_idx].dma);
		if (!rtlpci->rx_ring[rxring_idx].desc ||
		    (unsigned long)rtlpci->rx_ring[rxring_idx].desc & 0xFF) {
			FUNC2("Cannot allocate RX ring\n");
			return -ENOMEM;
		}

		/* init every desc in this ring */
		rtlpci->rx_ring[rxring_idx].idx = 0;

		for (i = 0; i < rtlpci->rxringcount; i++) {
			entry = &rtlpci->rx_ring[rxring_idx].desc[i];
			if (!FUNC0(hw, NULL, (u8 *)entry,
						      rxring_idx, i))
				return -ENOMEM;
		}

		rtlpriv->cfg->ops->set_desc(hw, (u8 *)entry, false,
					    HW_DESC_RXERO, &tmp_one);
	}
	return 0;
}