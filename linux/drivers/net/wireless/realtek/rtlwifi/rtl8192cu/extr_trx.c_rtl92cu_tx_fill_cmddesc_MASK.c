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
struct ieee80211_hw {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DESC_RATE1M ; 
 int /*<<< orphan*/  QSLT_BEACON ; 
 int /*<<< orphan*/  RTL_TX_DESC_SIZE ; 
 int RTL_TX_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 

void FUNC18(struct ieee80211_hw *hw,
			     u8 *pdesc8, bool firstseg,
			     bool lastseg, struct sk_buff *skb)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	u8 fw_queue = QSLT_BEACON;
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)(skb->data);
	__le16 fc = hdr->frame_control;
	__le32 *pdesc = (__le32 *)pdesc8;

	FUNC2((void *)pdesc, 0, RTL_TX_HEADER_SIZE);
	if (firstseg)
		FUNC9(pdesc, RTL_TX_HEADER_SIZE);
	FUNC16(pdesc, DESC_RATE1M);
	FUNC15(pdesc, 0);
	FUNC7(pdesc, 0);
	FUNC13(pdesc, fw_queue);
	FUNC4(pdesc, 1);
	FUNC6(pdesc, 1);
	FUNC14(pdesc, 7);
	FUNC8(pdesc, 0);
	FUNC10(pdesc, 1);
	FUNC12(pdesc, (u16)skb->len);
	FUNC4(pdesc, 1);
	FUNC6(pdesc, 1);
	FUNC9(pdesc, 0x20);
	FUNC17(pdesc, 1);
	if (!FUNC1(fc)) {
		FUNC5(pdesc, 1);
		FUNC11(pdesc, 8);
	}
	FUNC0(rtlpriv, COMP_CMD, DBG_LOUD, "H2C Tx Cmd Content",
		      pdesc, RTL_TX_DESC_SIZE);
}