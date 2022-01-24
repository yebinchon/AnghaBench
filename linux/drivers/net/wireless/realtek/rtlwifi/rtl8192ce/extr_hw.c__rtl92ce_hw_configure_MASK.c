#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ bt_coexist_type; scalar_t__ bt_coexistence; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct rtl_pci {int reg_bcn_ctrl_val; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ BT_CSR_BC4 ; 
 int BW_OPMODE_20MHZ ; 
 int RATE_ALL_CCK ; 
 int RATE_ALL_OFDM_AG ; 
 scalar_t__ REG_ACKTO ; 
 scalar_t__ REG_AGGLEN_LMT ; 
 scalar_t__ REG_AGGR_BREAK_TIME ; 
 scalar_t__ REG_AMPDU_MIN_SPACE ; 
 scalar_t__ REG_ATIMWND ; 
 scalar_t__ REG_BAR_MODE_CTRL ; 
 scalar_t__ REG_BCN_CTRL ; 
 scalar_t__ REG_BCN_MAX_ERR ; 
 scalar_t__ REG_BWOPMODE ; 
 scalar_t__ REG_DARFRC ; 
 scalar_t__ REG_FAST_EDCA_CTRL ; 
 int /*<<< orphan*/  REG_FWHW_TXQ_CTRL ; 
 scalar_t__ REG_HWSEQ_CTRL ; 
 scalar_t__ REG_INIRTS_RATE_SEL ; 
 int /*<<< orphan*/  REG_MAC_SPEC_SIFS ; 
 scalar_t__ REG_MAR ; 
 int /*<<< orphan*/  REG_NAV_PROT_LEN ; 
 scalar_t__ REG_PIFS ; 
 int /*<<< orphan*/  REG_PROT_MODE_CTRL ; 
 scalar_t__ REG_RARFRC ; 
 int /*<<< orphan*/  REG_RL ; 
 scalar_t__ REG_RRSR ; 
 int /*<<< orphan*/  REG_SIFS_CTX ; 
 int /*<<< orphan*/  REG_SIFS_TRX ; 
 scalar_t__ REG_SLOT ; 
 int /*<<< orphan*/  REG_SPEC_SIFS ; 
 scalar_t__ REG_TBTT_PROHIBIT ; 
 struct rtl_pci* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_pci *rtlpci = FUNC0(FUNC1(hw));
	struct rtl_priv *rtlpriv = FUNC2(hw);
	u8 reg_bw_opmode;
	u32 reg_prsr;

	reg_bw_opmode = BW_OPMODE_20MHZ;
	reg_prsr = RATE_ALL_CCK | RATE_ALL_OFDM_AG;

	FUNC3(rtlpriv, REG_INIRTS_RATE_SEL, 0x8);

	FUNC3(rtlpriv, REG_BWOPMODE, reg_bw_opmode);

	FUNC4(rtlpriv, REG_RRSR, reg_prsr);

	FUNC3(rtlpriv, REG_SLOT, 0x09);

	FUNC3(rtlpriv, REG_AMPDU_MIN_SPACE, 0x0);

	FUNC5(rtlpriv, REG_FWHW_TXQ_CTRL, 0x1F80);

	FUNC5(rtlpriv, REG_RL, 0x0707);

	FUNC4(rtlpriv, REG_BAR_MODE_CTRL, 0x02012802);

	FUNC3(rtlpriv, REG_HWSEQ_CTRL, 0xFF);

	FUNC4(rtlpriv, REG_DARFRC, 0x01000000);
	FUNC4(rtlpriv, REG_DARFRC + 4, 0x07060504);
	FUNC4(rtlpriv, REG_RARFRC, 0x01000000);
	FUNC4(rtlpriv, REG_RARFRC + 4, 0x07060504);

	if ((rtlpriv->btcoexist.bt_coexistence) &&
	    (rtlpriv->btcoexist.bt_coexist_type == BT_CSR_BC4))
		FUNC4(rtlpriv, REG_AGGLEN_LMT, 0x97427431);
	else
		FUNC4(rtlpriv, REG_AGGLEN_LMT, 0xb972a841);

	FUNC3(rtlpriv, REG_ATIMWND, 0x2);

	FUNC3(rtlpriv, REG_BCN_MAX_ERR, 0xff);

	rtlpci->reg_bcn_ctrl_val = 0x1f;
	FUNC3(rtlpriv, REG_BCN_CTRL, rtlpci->reg_bcn_ctrl_val);

	FUNC3(rtlpriv, REG_TBTT_PROHIBIT + 1, 0xff);

	FUNC3(rtlpriv, REG_TBTT_PROHIBIT + 1, 0xff);

	FUNC3(rtlpriv, REG_PIFS, 0x1C);
	FUNC3(rtlpriv, REG_AGGR_BREAK_TIME, 0x16);

	if ((rtlpriv->btcoexist.bt_coexistence) &&
	    (rtlpriv->btcoexist.bt_coexist_type == BT_CSR_BC4)) {
		FUNC5(rtlpriv, REG_NAV_PROT_LEN, 0x0020);
		FUNC5(rtlpriv, REG_PROT_MODE_CTRL, 0x0402);
	} else {
		FUNC5(rtlpriv, REG_NAV_PROT_LEN, 0x0020);
		FUNC5(rtlpriv, REG_NAV_PROT_LEN, 0x0020);
	}

	if ((rtlpriv->btcoexist.bt_coexistence) &&
	    (rtlpriv->btcoexist.bt_coexist_type == BT_CSR_BC4))
		FUNC4(rtlpriv, REG_FAST_EDCA_CTRL, 0x03086666);
	else
		FUNC4(rtlpriv, REG_FAST_EDCA_CTRL, 0x086666);

	FUNC3(rtlpriv, REG_ACKTO, 0x40);

	FUNC5(rtlpriv, REG_SPEC_SIFS, 0x1010);
	FUNC5(rtlpriv, REG_MAC_SPEC_SIFS, 0x1010);

	FUNC5(rtlpriv, REG_SIFS_CTX, 0x1010);

	FUNC5(rtlpriv, REG_SIFS_TRX, 0x1010);

	FUNC4(rtlpriv, REG_MAR, 0xffffffff);
	FUNC4(rtlpriv, REG_MAR + 4, 0xffffffff);

}