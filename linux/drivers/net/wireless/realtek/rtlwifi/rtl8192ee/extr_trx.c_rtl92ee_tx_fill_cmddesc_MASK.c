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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct rtl_priv {int dummy; } ;
struct rtl_pci {int /*<<< orphan*/  pdev; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  COMP_SEND ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  DESC_RATE1M ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int QSLT_BEACON ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct rtl_pci* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC7 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 

void FUNC22(struct ieee80211_hw *hw,
			     u8 *pdesc8, bool firstseg,
			     bool lastseg, struct sk_buff *skb)
{
	struct rtl_priv *rtlpriv = FUNC7(hw);
	struct rtl_pci *rtlpci = FUNC5(FUNC6(hw));
	u8 fw_queue = QSLT_BEACON;
	dma_addr_t mapping = FUNC4(rtlpci->pdev,
					    skb->data, skb->len,
					    PCI_DMA_TODEVICE);
	u8 txdesc_len = 40;
	__le32 *pdesc = (__le32 *)pdesc8;

	if (FUNC3(rtlpci->pdev, mapping)) {
		FUNC1(rtlpriv, COMP_SEND, DBG_TRACE,
			 "DMA mapping error\n");
		return;
	}
	FUNC2(pdesc, txdesc_len);

	if (firstseg)
		FUNC12(pdesc, txdesc_len);

	FUNC20(pdesc, DESC_RATE1M);

	FUNC17(pdesc, 0);

	FUNC10(pdesc, 0);

	FUNC15(pdesc, fw_queue);

	FUNC8(pdesc, 1);
	FUNC9(pdesc, 1);

	FUNC19(pdesc, (u16)(skb->len));

	FUNC18(pdesc, mapping);

	FUNC16(pdesc, 7);
	FUNC11(pdesc, 0);

	FUNC13(pdesc, 1);

	FUNC14(pdesc, (u16)(skb->len));

	FUNC8(pdesc, 1);
	FUNC9(pdesc, 1);

	FUNC12(pdesc, 40);

	FUNC21(pdesc, 1);

	FUNC0(rtlpriv, COMP_CMD, DBG_LOUD,
		      "H2C Tx Cmd Content\n", pdesc, txdesc_len);
}