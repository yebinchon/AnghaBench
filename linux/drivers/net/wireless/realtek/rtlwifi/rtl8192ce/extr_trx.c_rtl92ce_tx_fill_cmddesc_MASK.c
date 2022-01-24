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
struct rtl_priv {int dummy; } ;
struct rtl_pci {int /*<<< orphan*/  pdev; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  COMP_SEND ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  DESC_RATE1M ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  QSLT_BEACON ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TX_DESC_SIZE ; 
 int USB_HWDESC_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct rtl_pci* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 

void FUNC25(struct ieee80211_hw *hw,
			     u8 *pdesc8, bool firstseg,
			     bool lastseg, struct sk_buff *skb)
{
	struct rtl_priv *rtlpriv = FUNC8(hw);
	struct rtl_pci *rtlpci = FUNC6(FUNC7(hw));
	u8 fw_queue = QSLT_BEACON;
	__le32 *pdesc = (__le32 *)pdesc8;

	dma_addr_t mapping = FUNC5(rtlpci->pdev,
					    skb->data, skb->len,
					    PCI_DMA_TODEVICE);

	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)(skb->data);
	__le16 fc = hdr->frame_control;

	if (FUNC4(rtlpci->pdev, mapping)) {
		FUNC1(rtlpriv, COMP_SEND, DBG_TRACE,
			 "DMA mapping error\n");
		return;
	}
	FUNC2(pdesc, TX_DESC_SIZE);

	if (firstseg)
		FUNC14(pdesc, USB_HWDESC_HEADER_LEN);

	FUNC23(pdesc, DESC_RATE1M);

	FUNC20(pdesc, 0);

	FUNC12(pdesc, 0);

	FUNC18(pdesc, fw_queue);

	FUNC9(pdesc, 1);
	FUNC11(pdesc, 1);

	FUNC22(pdesc, (u16)(skb->len));

	FUNC21(pdesc, mapping);

	FUNC19(pdesc, 7);
	FUNC13(pdesc, 0);

	FUNC15(pdesc, 1);

	FUNC17(pdesc, (u16)(skb->len));

	FUNC9(pdesc, 1);
	FUNC11(pdesc, 1);

	FUNC14(pdesc, 0x20);

	FUNC24(pdesc, 1);

	if (!FUNC3(fc)) {
		FUNC10(pdesc, 1);
		FUNC16(pdesc, 8);
	}

	FUNC0(rtlpriv, COMP_CMD, DBG_LOUD,
		      "H2C Tx Cmd Content", pdesc, TX_DESC_SIZE);
}