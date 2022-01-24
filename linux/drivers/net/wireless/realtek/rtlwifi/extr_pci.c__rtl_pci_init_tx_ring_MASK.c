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
typedef  scalar_t__ u32 ;
struct rtl_tx_desc {int dummy; } ;
struct rtl_tx_buffer_desc {int dummy; } ;
struct rtl_priv {TYPE_3__* cfg; scalar_t__ use_new_trx_flow; } ;
struct rtl_pci {TYPE_1__* tx_ring; int /*<<< orphan*/  pdev; } ;
struct ieee80211_hw {int dummy; } ;
typedef  void* dma_addr_t ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* set_desc ) (struct ieee80211_hw*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {unsigned int entries; int /*<<< orphan*/  queue; scalar_t__ idx; void* dma; struct rtl_tx_desc* desc; scalar_t__ cur_tx_wp; scalar_t__ cur_tx_rp; void* buffer_desc_dma; struct rtl_tx_buffer_desc* buffer_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HW_DESC_TX_NEXTDESC_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,struct rtl_tx_desc*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,void**) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 struct rtl_pci* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_hw *hw,
				 unsigned int prio, unsigned int entries)
{
	struct rtl_pci *rtlpci = FUNC3(FUNC4(hw));
	struct rtl_priv *rtlpriv = FUNC5(hw);
	struct rtl_tx_buffer_desc *buffer_desc;
	struct rtl_tx_desc *desc;
	dma_addr_t buffer_desc_dma, desc_dma;
	u32 nextdescaddress;
	int i;

	/* alloc tx buffer desc for new trx flow*/
	if (rtlpriv->use_new_trx_flow) {
		buffer_desc =
		   FUNC1(rtlpci->pdev,
					 sizeof(*buffer_desc) * entries,
					 &buffer_desc_dma);

		if (!buffer_desc || (unsigned long)buffer_desc & 0xFF) {
			FUNC2("Cannot allocate TX ring (prio = %d)\n",
			       prio);
			return -ENOMEM;
		}

		rtlpci->tx_ring[prio].buffer_desc = buffer_desc;
		rtlpci->tx_ring[prio].buffer_desc_dma = buffer_desc_dma;

		rtlpci->tx_ring[prio].cur_tx_rp = 0;
		rtlpci->tx_ring[prio].cur_tx_wp = 0;
	}

	/* alloc dma for this ring */
	desc = FUNC1(rtlpci->pdev,
				     sizeof(*desc) * entries, &desc_dma);

	if (!desc || (unsigned long)desc & 0xFF) {
		FUNC2("Cannot allocate TX ring (prio = %d)\n", prio);
		return -ENOMEM;
	}

	rtlpci->tx_ring[prio].desc = desc;
	rtlpci->tx_ring[prio].dma = desc_dma;

	rtlpci->tx_ring[prio].idx = 0;
	rtlpci->tx_ring[prio].entries = entries;
	FUNC6(&rtlpci->tx_ring[prio].queue);

	FUNC0(rtlpriv, COMP_INIT, DBG_LOUD, "queue:%d, ring_addr:%p\n",
		 prio, desc);

	/* init every desc in this ring */
	if (!rtlpriv->use_new_trx_flow) {
		for (i = 0; i < entries; i++) {
			nextdescaddress = (u32)desc_dma +
					  ((i +	1) % entries) *
					  sizeof(*desc);

			rtlpriv->cfg->ops->set_desc(hw, (u8 *)&desc[i],
						    true,
						    HW_DESC_TX_NEXTDESC_ADDR,
						    (u8 *)&nextdescaddress);
		}
	}
	return 0;
}