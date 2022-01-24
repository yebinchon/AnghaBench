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
typedef  size_t u8 ;
typedef  int u32 ;
struct rtl_phy {int** mcs_txpwrlevel_origoffset; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_mac {int act_scanning; } ;
struct rtl_efuse {scalar_t__ eeprom_regulatory; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPHY ; 
 int MASKBYTE0 ; 
 int MASKBYTE1 ; 
 int /*<<< orphan*/  PHY_TXPWR ; 
 size_t RF6052_MAX_TX_PWR ; 
 size_t RF90_PATH_A ; 
 size_t RF90_PATH_B ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTXAGC_A_CCK1_MCS32 ; 
 int /*<<< orphan*/  RTXAGC_B_CCK11_A_CCK2_11 ; 
 int /*<<< orphan*/  RTXAGC_B_CCK1_55_MCS32 ; 
 struct rtl_efuse* FUNC1 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC2 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 

void FUNC5(struct ieee80211_hw *hw,
					 u8 *ppowerlevel)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	struct rtl_mac *mac = FUNC2(FUNC3(hw));
	struct rtl_efuse *rtlefuse = FUNC1(FUNC3(hw));
	u32 tx_agc[2] = {0, 0}, tmpval;
	bool turbo_scanoff = false;
	u8 idx1, idx2;
	u8 *ptr;

	if (rtlefuse->eeprom_regulatory != 0)
		turbo_scanoff = true;

	if (mac->act_scanning == true) {
		tx_agc[RF90_PATH_A] = 0x3f3f3f3f;
		tx_agc[RF90_PATH_B] = 0x3f3f3f3f;

		if (turbo_scanoff) {
			for (idx1 = RF90_PATH_A; idx1 <= RF90_PATH_B;
				idx1++) {
				tx_agc[idx1] = ppowerlevel[idx1] |
				    (ppowerlevel[idx1] << 8) |
				    (ppowerlevel[idx1] << 16) |
				    (ppowerlevel[idx1] << 24);
			}
		}
	} else {
		for (idx1 = RF90_PATH_A; idx1 <= RF90_PATH_B; idx1++) {
			tx_agc[idx1] = ppowerlevel[idx1] |
			    (ppowerlevel[idx1] << 8) |
			    (ppowerlevel[idx1] << 16) |
			    (ppowerlevel[idx1] << 24);
		}

		if (rtlefuse->eeprom_regulatory == 0) {
			tmpval =
			    (rtlphy->mcs_txpwrlevel_origoffset[0][6]) +
			    (rtlphy->mcs_txpwrlevel_origoffset[0][7] <<
			     8);
			tx_agc[RF90_PATH_A] += tmpval;

			tmpval = (rtlphy->mcs_txpwrlevel_origoffset[0][14]) +
			    (rtlphy->mcs_txpwrlevel_origoffset[0][15] <<
			     24);
			tx_agc[RF90_PATH_B] += tmpval;
		}
	}

	for (idx1 = RF90_PATH_A; idx1 <= RF90_PATH_B; idx1++) {
		ptr = (u8 *)&tx_agc[idx1];
		for (idx2 = 0; idx2 < 4; idx2++) {
			if (*ptr > RF6052_MAX_TX_PWR)
				*ptr = RF6052_MAX_TX_PWR;
			ptr++;
		}
	}

	tmpval = tx_agc[RF90_PATH_A] & 0xff;
	FUNC4(hw, RTXAGC_A_CCK1_MCS32, MASKBYTE1, tmpval);

	FUNC0(rtlpriv, FPHY, PHY_TXPWR,
		"CCK PWR 1M (rf-A) = 0x%x (reg 0x%x)\n", tmpval,
		 RTXAGC_A_CCK1_MCS32);

	tmpval = tx_agc[RF90_PATH_A] >> 8;

	tmpval = tmpval & 0xff00ffff;

	FUNC4(hw, RTXAGC_B_CCK11_A_CCK2_11, 0xffffff00, tmpval);

	FUNC0(rtlpriv, FPHY, PHY_TXPWR,
		"CCK PWR 2~11M (rf-A) = 0x%x (reg 0x%x)\n", tmpval,
		 RTXAGC_B_CCK11_A_CCK2_11);

	tmpval = tx_agc[RF90_PATH_B] >> 24;
	FUNC4(hw, RTXAGC_B_CCK11_A_CCK2_11, MASKBYTE0, tmpval);

	FUNC0(rtlpriv, FPHY, PHY_TXPWR,
		"CCK PWR 11M (rf-B) = 0x%x (reg 0x%x)\n", tmpval,
		 RTXAGC_B_CCK11_A_CCK2_11);

	tmpval = tx_agc[RF90_PATH_B] & 0x00ffffff;
	FUNC4(hw, RTXAGC_B_CCK1_55_MCS32, 0xffffff00, tmpval);

	FUNC0(rtlpriv, FPHY, PHY_TXPWR,
		"CCK PWR 1~5.5M (rf-B) = 0x%x (reg 0x%x)\n", tmpval,
		 RTXAGC_B_CCK1_55_MCS32);
}