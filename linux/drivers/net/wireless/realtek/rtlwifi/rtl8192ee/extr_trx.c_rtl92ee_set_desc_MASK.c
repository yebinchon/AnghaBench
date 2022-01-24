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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct rtl_priv {TYPE_2__* cfg; } ;
struct rtl_pci {struct rtl8192_tx_ring* tx_ring; } ;
struct rtl8192_tx_ring {int entries; int cur_tx_wp; int /*<<< orphan*/  cur_tx_rp; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {TYPE_1__* mod_params; } ;
struct TYPE_3__ {int dma64; } ;

/* Variables and functions */
 int BEACON_QUEUE ; 
 int FUNC0 (int) ; 
#define  HW_DESC_OWN 131 
#define  HW_DESC_RXERO 130 
#define  HW_DESC_RX_PREPARE 129 
#define  HW_DESC_TX_NEXTDESC_ADDR 128 
 scalar_t__ MAX_RECEIVE_BUFFER_SIZE ; 
 scalar_t__ RX_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct rtl_pci* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC16(struct ieee80211_hw *hw, u8 *pdesc8, bool istx,
		      u8 desc_name, u8 *val)
{
	struct rtl_priv *rtlpriv = FUNC5(hw);
	u8 q_idx = *val;
	bool dma64 = rtlpriv->cfg->mod_params->dma64;
	__le32 *pdesc = (__le32 *)pdesc8;

	if (istx) {
		switch (desc_name) {
		case HW_DESC_TX_NEXTDESC_ADDR:
			FUNC15(pdesc, *(u32 *)val);
			break;
		case HW_DESC_OWN:{
			struct rtl_pci *rtlpci = FUNC3(FUNC4(hw));
			struct rtl8192_tx_ring *ring = &rtlpci->tx_ring[q_idx];
			u16 max_tx_desc = ring->entries;

			if (q_idx == BEACON_QUEUE) {
				ring->cur_tx_wp = 0;
				ring->cur_tx_rp = 0;
				FUNC14(pdesc, 1);
				return;
			}

			/* make sure tx desc is available by caller */
			ring->cur_tx_wp = ((ring->cur_tx_wp + 1) % max_tx_desc);

			FUNC6(rtlpriv,
				       FUNC2(q_idx),
				       ring->cur_tx_wp);
		}
		break;
		}
	} else {
		switch (desc_name) {
		case HW_DESC_RX_PREPARE:
			FUNC9(pdesc, 0);
			FUNC8(pdesc, 0);
			FUNC10(pdesc, 0);

			FUNC7(pdesc,
						       MAX_RECEIVE_BUFFER_SIZE +
						       RX_DESC_SIZE);

			FUNC12(pdesc, (*(dma_addr_t *)val) &
						   FUNC0(32));
			FUNC11(pdesc,
						    ((u64)(*(dma_addr_t *)val)
						    >> 32),
						    dma64);
			break;
		case HW_DESC_RXERO:
			FUNC13(pdesc, 1);
			break;
		default:
			FUNC1(true,
				  "rtl8192ee: ERR rxdesc :%d not processed\n",
				  desc_name);
			break;
		}
	}
}