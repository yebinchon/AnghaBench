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
struct TYPE_2__ {int rf_type; } ;
struct rtl_priv {TYPE_1__ phy; } ;
struct rtl_pci {int reg_bcn_ctrl_val; } ;
struct rtl_hal {scalar_t__ macphymode; int minspace_cfg; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int BW_OPMODE_20MHZ ; 
 scalar_t__ DUALMAC_DUALPHY ; 
 scalar_t__ DUALMAC_SINGLEPHY ; 
 int MAX_MSS_DENSITY_1T ; 
 int MAX_MSS_DENSITY_2T ; 
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
 int /*<<< orphan*/  REG_FAST_EDCA_CTRL ; 
 int /*<<< orphan*/  REG_FWHW_TXQ_CTRL ; 
 scalar_t__ REG_HWSEQ_CTRL ; 
 scalar_t__ REG_INIRTS_RATE_SEL ; 
 int /*<<< orphan*/  REG_MAC_SPEC_SIFS ; 
 scalar_t__ REG_MAR ; 
 int /*<<< orphan*/  REG_NAV_PROT_LEN ; 
 scalar_t__ REG_PIFS ; 
 scalar_t__ REG_RARFRC ; 
 int /*<<< orphan*/  REG_RL ; 
 scalar_t__ REG_RRSR ; 
 int /*<<< orphan*/  REG_SIFS_CTX ; 
 int /*<<< orphan*/  REG_SIFS_TRX ; 
 scalar_t__ REG_SLOT ; 
 int /*<<< orphan*/  REG_SPEC_SIFS ; 
 scalar_t__ REG_TBTT_PROHIBIT ; 
#define  RF_1T1R 131 
#define  RF_1T2R 130 
#define  RF_2T2R 129 
#define  RF_2T2R_GREEN 128 
 struct rtl_hal* FUNC0 (struct rtl_priv*) ; 
 struct rtl_pci* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_pci *rtlpci = FUNC1(FUNC2(hw));
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_hal *rtlhal = FUNC0(FUNC3(hw));
	u8 reg_bw_opmode = BW_OPMODE_20MHZ;
	u32 reg_rrsr;

	reg_rrsr = RATE_ALL_CCK | RATE_ALL_OFDM_AG;
	FUNC4(rtlpriv, REG_INIRTS_RATE_SEL, 0x8);
	FUNC4(rtlpriv, REG_BWOPMODE, reg_bw_opmode);
	FUNC5(rtlpriv, REG_RRSR, reg_rrsr);
	FUNC4(rtlpriv, REG_SLOT, 0x09);
	FUNC4(rtlpriv, REG_AMPDU_MIN_SPACE, 0x0);
	FUNC6(rtlpriv, REG_FWHW_TXQ_CTRL, 0x1F80);
	FUNC6(rtlpriv, REG_RL, 0x0707);
	FUNC5(rtlpriv, REG_BAR_MODE_CTRL, 0x02012802);
	FUNC4(rtlpriv, REG_HWSEQ_CTRL, 0xFF);
	FUNC5(rtlpriv, REG_DARFRC, 0x01000000);
	FUNC5(rtlpriv, REG_DARFRC + 4, 0x07060504);
	FUNC5(rtlpriv, REG_RARFRC, 0x01000000);
	FUNC5(rtlpriv, REG_RARFRC + 4, 0x07060504);
	/* Aggregation threshold */
	if (rtlhal->macphymode == DUALMAC_DUALPHY)
		FUNC5(rtlpriv, REG_AGGLEN_LMT, 0xb9726641);
	else if (rtlhal->macphymode == DUALMAC_SINGLEPHY)
		FUNC5(rtlpriv, REG_AGGLEN_LMT, 0x66626641);
	else
		FUNC5(rtlpriv, REG_AGGLEN_LMT, 0xb972a841);
	FUNC4(rtlpriv, REG_ATIMWND, 0x2);
	FUNC4(rtlpriv, REG_BCN_MAX_ERR, 0x0a);
	rtlpci->reg_bcn_ctrl_val = 0x1f;
	FUNC4(rtlpriv, REG_BCN_CTRL, rtlpci->reg_bcn_ctrl_val);
	FUNC4(rtlpriv, REG_TBTT_PROHIBIT + 1, 0xff);
	FUNC4(rtlpriv, REG_PIFS, 0x1C);
	FUNC4(rtlpriv, REG_AGGR_BREAK_TIME, 0x16);
	FUNC6(rtlpriv, REG_NAV_PROT_LEN, 0x0020);
	/* For throughput */
	FUNC6(rtlpriv, REG_FAST_EDCA_CTRL, 0x6666);
	/* ACKTO for IOT issue. */
	FUNC4(rtlpriv, REG_ACKTO, 0x40);
	/* Set Spec SIFS (used in NAV) */
	FUNC6(rtlpriv, REG_SPEC_SIFS, 0x1010);
	FUNC6(rtlpriv, REG_MAC_SPEC_SIFS, 0x1010);
	/* Set SIFS for CCK */
	FUNC6(rtlpriv, REG_SIFS_CTX, 0x1010);
	/* Set SIFS for OFDM */
	FUNC6(rtlpriv, REG_SIFS_TRX, 0x1010);
	/* Set Multicast Address. */
	FUNC5(rtlpriv, REG_MAR, 0xffffffff);
	FUNC5(rtlpriv, REG_MAR + 4, 0xffffffff);
	switch (rtlpriv->phy.rf_type) {
	case RF_1T2R:
	case RF_1T1R:
		rtlhal->minspace_cfg = (MAX_MSS_DENSITY_1T << 3);
		break;
	case RF_2T2R:
	case RF_2T2R_GREEN:
		rtlhal->minspace_cfg = (MAX_MSS_DENSITY_2T << 3);
		break;
	}
}