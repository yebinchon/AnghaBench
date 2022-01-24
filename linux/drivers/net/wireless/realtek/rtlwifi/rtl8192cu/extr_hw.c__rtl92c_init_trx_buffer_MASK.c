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
struct rtl_priv {int dummy; } ;
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PBP_128 ; 
 scalar_t__ REG_PBP ; 
 scalar_t__ REG_TDECTRL ; 
 scalar_t__ REG_TRXFF_BNDY ; 
 scalar_t__ REG_TXPKTBUF_BCNQ_BDNY ; 
 scalar_t__ REG_TXPKTBUF_MGQ_BDNY ; 
 scalar_t__ REG_TXPKTBUF_WMAC_LBK_BF_HD ; 
 int /*<<< orphan*/  RX_PAGE_SIZE_REG_VALUE ; 
 int TX_PAGE_BOUNDARY ; 
 int WMM_CHIP_A_TX_PAGE_BOUNDARY ; 
 int WMM_CHIP_B_TX_PAGE_BOUNDARY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC3 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw, bool wmm_enable)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	struct rtl_hal *rtlhal = FUNC3(FUNC4(hw));
	u8	txpktbuf_bndy;
	u8	value8;

	if (!wmm_enable)
		txpktbuf_bndy = TX_PAGE_BOUNDARY;
	else /* for WMM */
		txpktbuf_bndy = (FUNC0(rtlhal->version))
						? WMM_CHIP_B_TX_PAGE_BOUNDARY
						: WMM_CHIP_A_TX_PAGE_BOUNDARY;
	FUNC5(rtlpriv, REG_TXPKTBUF_BCNQ_BDNY, txpktbuf_bndy);
	FUNC5(rtlpriv, REG_TXPKTBUF_MGQ_BDNY, txpktbuf_bndy);
	FUNC5(rtlpriv, REG_TXPKTBUF_WMAC_LBK_BF_HD, txpktbuf_bndy);
	FUNC5(rtlpriv, REG_TRXFF_BNDY, txpktbuf_bndy);
	FUNC5(rtlpriv, REG_TDECTRL+1, txpktbuf_bndy);
	FUNC6(rtlpriv,  (REG_TRXFF_BNDY + 2), 0x27FF);
	value8 = FUNC1(RX_PAGE_SIZE_REG_VALUE) | FUNC2(PBP_128);
	FUNC5(rtlpriv, REG_PBP, value8);
}