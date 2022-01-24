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
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct rtl_ps_ctl {scalar_t__ fwctrl_lps; } ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {int /*<<< orphan*/  pdev; } ;
struct rtl_hal {scalar_t__ current_bandtype; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ BAND_ON_5G ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  COMP_SEND ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  DESC_RATE1M ; 
 int /*<<< orphan*/  DESC_RATE6M ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  QSLT_BEACON ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TX_DESC_SIZE ; 
 int USB_HWDESC_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC22 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC25 (struct ieee80211_hw*) ; 
 struct rtl_ps_ctl* FUNC26 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC27 () ; 

void FUNC28(struct ieee80211_hw *hw,
			     u8 *pdesc, bool firstseg,
			     bool lastseg, struct sk_buff *skb)
{
	struct rtl_priv *rtlpriv = FUNC25(hw);
	struct rtl_pci *rtlpci = FUNC23(FUNC24(hw));
	struct rtl_ps_ctl *ppsc = FUNC26(rtlpriv);
	struct rtl_hal *rtlhal = FUNC22(rtlpriv);
	u8 fw_queue = QSLT_BEACON;
	dma_addr_t mapping = FUNC21(rtlpci->pdev,
		    skb->data, skb->len, PCI_DMA_TODEVICE);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)(skb->data);
	__le16 fc = hdr->frame_control;

	if (FUNC20(rtlpci->pdev, mapping)) {
		FUNC2(rtlpriv, COMP_SEND, DBG_TRACE,
			 "DMA mapping error\n");
		return;
	}
	FUNC0(pdesc, TX_DESC_SIZE);
	if (firstseg)
		FUNC8(pdesc, USB_HWDESC_HEADER_LEN);
	/* 5G have no CCK rate
	 * Caution: The macros below are multi-line expansions.
	 * The braces are needed no matter what checkpatch says
	 */
	if (rtlhal->current_bandtype == BAND_ON_5G) {
		FUNC17(pdesc, DESC_RATE6M);
	} else {
		FUNC17(pdesc, DESC_RATE1M);
	}
	FUNC14(pdesc, 0);
	FUNC6(pdesc, 0);
	FUNC12(pdesc, fw_queue);
	FUNC3(pdesc, 1);
	FUNC5(pdesc, 1);
	FUNC16(pdesc, (u16)skb->len);
	FUNC15(pdesc, mapping);
	FUNC13(pdesc, 7);
	FUNC7(pdesc, 0);
	FUNC11(pdesc, (u16) (skb->len));
	FUNC3(pdesc, 1);
	FUNC5(pdesc, 1);
	FUNC8(pdesc, 0x20);
	FUNC18(pdesc, 1);

	if (!FUNC19(fc) && ppsc->fwctrl_lps) {
		FUNC4(pdesc, 1);
		FUNC10(pdesc, 8);
	}

	FUNC1(rtlpriv, COMP_CMD, DBG_LOUD,
		      "H2C Tx Cmd Content", pdesc, TX_DESC_SIZE);
	FUNC27();
	FUNC9(pdesc, 1);
}