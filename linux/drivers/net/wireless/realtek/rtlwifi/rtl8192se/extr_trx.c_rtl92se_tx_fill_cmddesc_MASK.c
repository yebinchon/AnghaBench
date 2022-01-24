#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; scalar_t__ cb; } ;
struct rtl_tcb_desc {scalar_t__ cmd_or_init; int /*<<< orphan*/  last_inipkt; } ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {int /*<<< orphan*/  pdev; } ;
struct rtl_hal {int /*<<< orphan*/  h2c_txcmd_seq; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COMP_SEND ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 scalar_t__ DESC_PACKET_TYPE_INIT ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_CMDDESC_SIZE_RTL8192S ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC14 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC17 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC18 () ; 

void FUNC19(struct ieee80211_hw *hw, u8 *pdesc,
	bool firstseg, bool lastseg, struct sk_buff *skb)
{
	struct rtl_priv *rtlpriv = FUNC17(hw);
	struct rtl_pci *rtlpci = FUNC15(FUNC16(hw));
	struct rtl_hal *rtlhal = FUNC14(FUNC17(hw));
	struct rtl_tcb_desc *tcb_desc = (struct rtl_tcb_desc *)(skb->cb);

	dma_addr_t mapping = FUNC13(rtlpci->pdev, skb->data, skb->len,
			PCI_DMA_TODEVICE);

	if (FUNC12(rtlpci->pdev, mapping)) {
		FUNC1(rtlpriv, COMP_SEND, DBG_TRACE,
			 "DMA mapping error\n");
		return;
	}
	/* Clear all status	*/
	FUNC0(pdesc, TX_CMDDESC_SIZE_RTL8192S);

	/* This bit indicate this packet is used for FW download. */
	if (tcb_desc->cmd_or_init == DESC_PACKET_TYPE_INIT) {
		/* For firmware downlaod we only need to set LINIP */
		FUNC5(pdesc, tcb_desc->last_inipkt);

		/* 92SE must set as 1 for firmware download HW DMA error */
		FUNC3(pdesc, 1);
		FUNC4(pdesc, 1);

		/* 92SE need not to set TX packet size when firmware download */
		FUNC8(pdesc, (u16)(skb->len));
		FUNC11(pdesc, (u16)(skb->len));
		FUNC10(pdesc, mapping);

		FUNC18();
		FUNC7(pdesc, 1);
	} else { /* H2C Command Desc format (Host TXCMD) */
		/* 92SE must set as 1 for firmware download HW DMA error */
		FUNC3(pdesc, 1);
		FUNC4(pdesc, 1);

		FUNC6(pdesc, 0x20);

		/* Buffer size + command header */
		FUNC8(pdesc, (u16)(skb->len));
		/* Fixed queue of H2C command */
		FUNC9(pdesc, 0x13);

		FUNC2(skb->data, 24, 7, rtlhal->h2c_txcmd_seq);

		FUNC11(pdesc, (u16)(skb->len));
		FUNC10(pdesc, mapping);

		FUNC18();
		FUNC7(pdesc, 1);

	}
}