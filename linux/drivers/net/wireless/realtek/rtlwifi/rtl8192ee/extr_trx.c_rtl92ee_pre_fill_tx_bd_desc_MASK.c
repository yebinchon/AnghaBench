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
typedef  size_t u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {int len; } ;
struct TYPE_8__ {scalar_t__ earlymode_enable; } ;
struct rtl_priv {TYPE_4__ rtlhal; TYPE_2__* cfg; } ;
struct rtl_pci {TYPE_3__* tx_ring; } ;
struct ieee80211_hw {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_7__ {int cur_tx_wp; scalar_t__ dma; } ;
struct TYPE_6__ {TYPE_1__* mod_params; } ;
struct TYPE_5__ {int dma64; } ;

/* Variables and functions */
 size_t BEACON_QUEUE ; 
 int RTL8192EE_SEG_NUM ; 
 int TX_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct rtl_pci* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,int) ; 

void FUNC15(struct ieee80211_hw *hw,
				 u8 *tx_bd_desc8, u8 *desc8, u8 queue_index,
				 struct sk_buff *skb, dma_addr_t addr)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_pci *rtlpci = FUNC1(FUNC2(hw));
	u32 pkt_len = skb->len;
	u16 desc_size = 40; /*tx desc size*/
	u32 psblen = 0;
	u16 tx_page_size;
	u32 total_packet_size;
	u16 current_bd_desc;
	u8 i;
	u16 real_desc_size = 0x28;
	u16	append_early_mode_size = 0;
	u8 segmentnum = 1 << (RTL8192EE_SEG_NUM + 1);
	dma_addr_t desc_dma_addr;
	bool dma64 = rtlpriv->cfg->mod_params->dma64;
	__le32 *desc = (__le32 *)desc8;
	__le32 *tx_bd_desc = (__le32 *)tx_bd_desc8;

	tx_page_size = 2;
	current_bd_desc = rtlpci->tx_ring[queue_index].cur_tx_wp;

	total_packet_size = desc_size+pkt_len;

	if (rtlpriv->rtlhal.earlymode_enable)	{
		if (queue_index < BEACON_QUEUE) {
			append_early_mode_size = 8;
			total_packet_size += append_early_mode_size;
		}
	}

	if (tx_page_size > 0) {
		psblen = (pkt_len + real_desc_size + append_early_mode_size) /
			 (tx_page_size * 128);

		if (psblen * (tx_page_size * 128) < total_packet_size)
			psblen += 1;
	}

	/* tx desc addr */
	desc_dma_addr = rtlpci->tx_ring[queue_index].dma +
			(current_bd_desc * TX_DESC_SIZE);

	/* Reset */
	FUNC6(tx_bd_desc, 0);
	FUNC8(tx_bd_desc, 0);
	FUNC7(tx_bd_desc, 0);

	for (i = 1; i < segmentnum; i++) {
		FUNC14(tx_bd_desc, i, 0);
		FUNC13(tx_bd_desc, i, 0);
		FUNC12(tx_bd_desc, i, 0);
		FUNC11(tx_bd_desc, i, 0, dma64);
	}

	/* Clear all status */
	FUNC0(desc, TX_DESC_SIZE);

	if (rtlpriv->rtlhal.earlymode_enable) {
		if (queue_index < BEACON_QUEUE) {
			/* This if needs braces */
			FUNC6(tx_bd_desc, desc_size + 8);
		} else {
			FUNC6(tx_bd_desc, desc_size);
		}
	} else {
		FUNC6(tx_bd_desc, desc_size);
	}
	FUNC8(tx_bd_desc, psblen);
	FUNC5(tx_bd_desc, desc_dma_addr);
	FUNC4(tx_bd_desc, ((u64)desc_dma_addr >> 32),
				     dma64);

	FUNC14(tx_bd_desc, 1, pkt_len);
	/* don't using extendsion mode. */
	FUNC13(tx_bd_desc, 1, 0);
	FUNC12(tx_bd_desc, 1, addr);
	FUNC11(tx_bd_desc, 1,
					       ((u64)addr >> 32), dma64);

	FUNC9(desc, (u16)(pkt_len));
	FUNC10(desc, (u16)(pkt_len));
}