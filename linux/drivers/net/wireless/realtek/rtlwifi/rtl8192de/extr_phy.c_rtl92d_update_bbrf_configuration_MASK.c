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
struct rtl_phy {size_t num_total_rfpath; scalar_t__ rf_type; void** rfreg_chnlval; void** reg_rf3c; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {scalar_t__ current_bandtype; scalar_t__ macphymode; scalar_t__ interfaceindex; } ;
struct rtl_efuse {int eeprom_c9; int eeprom_cc; scalar_t__* internal_pa_5g; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;

/* Variables and functions */
 scalar_t__ BAND_ON_2_4G ; 
 int BDWORD ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  COMP_RF ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 scalar_t__ DUALMAC_DUALPHY ; 
 int MASKBYTE0 ; 
 int MASKDWORD ; 
 size_t RF90_PATH_A ; 
 int RFPGA0_ADDALLOCKEN ; 
 int RFPGA0_XAB_RFINTERFACESW ; 
 int RFPGA0_XAB_RFPARAMETER ; 
 int RFPGA0_XA_RFINTERFACEOE ; 
 int RFPGA0_XB_RFINTERFACEOE ; 
 int /*<<< orphan*/  RFREG_OFFSET_MASK ; 
 scalar_t__ RF_1T1R ; 
 int RF_CHNLBW ; 
 int ROFDM0_AGCRSSITABLE ; 
 int ROFDM0_ECCATHRESHOLD ; 
 int ROFDM0_TRXPATHENABLE ; 
 int ROFDM0_XARXIQIMBALANCE ; 
 int ROFDM0_XATXIQIMBALANCE ; 
 int ROFDM0_XBRXIQIMBALANCE ; 
 int ROFDM0_XBTXIQIMBALANCE ; 
 int ROFDM0_XCTXAFE ; 
 int ROFDM0_XDTXAFE ; 
 int ROFDM1_CFOTRACKING ; 
 int ROFDM1_TRXPATHENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int) ; 
 int FUNC4 (struct ieee80211_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int,int,int) ; 
 struct rtl_efuse* FUNC6 (struct rtl_priv*) ; 
 void* FUNC7 (struct ieee80211_hw*,size_t,int,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC8 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC9 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*,size_t,int,int,int) ; 

void FUNC12(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC9(hw);
	struct rtl_hal *rtlhal = FUNC8(FUNC9(hw));
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct rtl_efuse *rtlefuse = FUNC6(FUNC9(hw));
	u8 rfpath, i;

	FUNC1(rtlpriv, COMP_INIT, DBG_LOUD, "==>\n");
	/* r_select_5G for path_A/B 0 for 2.4G, 1 for 5G */
	if (rtlhal->current_bandtype == BAND_ON_2_4G) {
		/* r_select_5G for path_A/B,0x878 */
		FUNC10(hw, RFPGA0_XAB_RFPARAMETER, FUNC0(0), 0x0);
		FUNC10(hw, RFPGA0_XAB_RFPARAMETER, FUNC0(15), 0x0);
		if (rtlhal->macphymode != DUALMAC_DUALPHY) {
			FUNC10(hw, RFPGA0_XAB_RFPARAMETER, FUNC0(16), 0x0);
			FUNC10(hw, RFPGA0_XAB_RFPARAMETER, FUNC0(31), 0x0);
		}
		/* rssi_table_select:index 0 for 2.4G.1~3 for 5G,0xc78 */
		FUNC10(hw, ROFDM0_AGCRSSITABLE, FUNC0(6) | FUNC0(7), 0x0);
		/* fc_area  0xd2c */
		FUNC10(hw, ROFDM1_CFOTRACKING, FUNC0(14) | FUNC0(13), 0x0);
		/* 5G LAN ON */
		FUNC10(hw, 0xB30, 0x00F00000, 0xa);
		/* TX BB gain shift*1,Just for testchip,0xc80,0xc88 */
		FUNC10(hw, ROFDM0_XATXIQIMBALANCE, MASKDWORD,
			      0x40000100);
		FUNC10(hw, ROFDM0_XBTXIQIMBALANCE, MASKDWORD,
			      0x40000100);
		if (rtlhal->macphymode == DUALMAC_DUALPHY) {
			FUNC10(hw, RFPGA0_XAB_RFINTERFACESW,
				      FUNC0(10) | FUNC0(6) | FUNC0(5),
				      ((rtlefuse->eeprom_c9 & FUNC0(3)) >> 3) |
				      (rtlefuse->eeprom_c9 & FUNC0(1)) |
				      ((rtlefuse->eeprom_cc & FUNC0(1)) << 4));
			FUNC10(hw, RFPGA0_XA_RFINTERFACEOE,
				      FUNC0(10) | FUNC0(6) | FUNC0(5),
				      ((rtlefuse->eeprom_c9 & FUNC0(2)) >> 2) |
				      ((rtlefuse->eeprom_c9 & FUNC0(0)) << 1) |
				      ((rtlefuse->eeprom_cc & FUNC0(0)) << 5));
			FUNC10(hw, RFPGA0_XAB_RFPARAMETER, FUNC0(15), 0);
		} else {
			FUNC10(hw, RFPGA0_XAB_RFINTERFACESW,
				      FUNC0(26) | FUNC0(22) | FUNC0(21) | FUNC0(10) |
				      FUNC0(6) | FUNC0(5),
				      ((rtlefuse->eeprom_c9 & FUNC0(3)) >> 3) |
				      (rtlefuse->eeprom_c9 & FUNC0(1)) |
				      ((rtlefuse->eeprom_cc & FUNC0(1)) << 4) |
				      ((rtlefuse->eeprom_c9 & FUNC0(7)) << 9) |
				      ((rtlefuse->eeprom_c9 & FUNC0(5)) << 12) |
				      ((rtlefuse->eeprom_cc & FUNC0(3)) << 18));
			FUNC10(hw, RFPGA0_XA_RFINTERFACEOE,
				      FUNC0(10) | FUNC0(6) | FUNC0(5),
				      ((rtlefuse->eeprom_c9 & FUNC0(2)) >> 2) |
				      ((rtlefuse->eeprom_c9 & FUNC0(0)) << 1) |
				      ((rtlefuse->eeprom_cc & FUNC0(0)) << 5));
			FUNC10(hw, RFPGA0_XB_RFINTERFACEOE,
				      FUNC0(10) | FUNC0(6) | FUNC0(5),
				      ((rtlefuse->eeprom_c9 & FUNC0(6)) >> 6) |
				      ((rtlefuse->eeprom_c9 & FUNC0(4)) >> 3) |
				      ((rtlefuse->eeprom_cc & FUNC0(2)) << 3));
			FUNC10(hw, RFPGA0_XAB_RFPARAMETER,
				      FUNC0(31) | FUNC0(15), 0);
		}
		/* 1.5V_LDO */
	} else {
		/* r_select_5G for path_A/B */
		FUNC10(hw, RFPGA0_XAB_RFPARAMETER, FUNC0(0), 0x1);
		FUNC10(hw, RFPGA0_XAB_RFPARAMETER, FUNC0(15), 0x1);
		if (rtlhal->macphymode != DUALMAC_DUALPHY) {
			FUNC10(hw, RFPGA0_XAB_RFPARAMETER, FUNC0(16), 0x1);
			FUNC10(hw, RFPGA0_XAB_RFPARAMETER, FUNC0(31), 0x1);
		}
		/* rssi_table_select:index 0 for 2.4G.1~3 for 5G */
		FUNC10(hw, ROFDM0_AGCRSSITABLE, FUNC0(6) | FUNC0(7), 0x1);
		/* fc_area */
		FUNC10(hw, ROFDM1_CFOTRACKING, FUNC0(14) | FUNC0(13), 0x1);
		/* 5G LAN ON */
		FUNC10(hw, 0xB30, 0x00F00000, 0x0);
		/* TX BB gain shift,Just for testchip,0xc80,0xc88 */
		if (rtlefuse->internal_pa_5g[0])
			FUNC10(hw, ROFDM0_XATXIQIMBALANCE, MASKDWORD,
				      0x2d4000b5);
		else
			FUNC10(hw, ROFDM0_XATXIQIMBALANCE, MASKDWORD,
				      0x20000080);
		if (rtlefuse->internal_pa_5g[1])
			FUNC10(hw, ROFDM0_XBTXIQIMBALANCE, MASKDWORD,
				      0x2d4000b5);
		else
			FUNC10(hw, ROFDM0_XBTXIQIMBALANCE, MASKDWORD,
				      0x20000080);
		if (rtlhal->macphymode == DUALMAC_DUALPHY) {
			FUNC10(hw, RFPGA0_XAB_RFINTERFACESW,
				      FUNC0(10) | FUNC0(6) | FUNC0(5),
				      (rtlefuse->eeprom_cc & FUNC0(5)));
			FUNC10(hw, RFPGA0_XA_RFINTERFACEOE, FUNC0(10),
				      ((rtlefuse->eeprom_cc & FUNC0(4)) >> 4));
			FUNC10(hw, RFPGA0_XAB_RFPARAMETER, FUNC0(15),
				      (rtlefuse->eeprom_cc & FUNC0(4)) >> 4);
		} else {
			FUNC10(hw, RFPGA0_XAB_RFINTERFACESW,
				      FUNC0(26) | FUNC0(22) | FUNC0(21) | FUNC0(10) |
				      FUNC0(6) | FUNC0(5),
				      (rtlefuse->eeprom_cc & FUNC0(5)) |
				      ((rtlefuse->eeprom_cc & FUNC0(7)) << 14));
			FUNC10(hw, RFPGA0_XA_RFINTERFACEOE, FUNC0(10),
				      ((rtlefuse->eeprom_cc & FUNC0(4)) >> 4));
			FUNC10(hw, RFPGA0_XB_RFINTERFACEOE, FUNC0(10),
				      ((rtlefuse->eeprom_cc & FUNC0(6)) >> 6));
			FUNC10(hw, RFPGA0_XAB_RFPARAMETER,
				      FUNC0(31) | FUNC0(15),
				      ((rtlefuse->eeprom_cc & FUNC0(4)) >> 4) |
				      ((rtlefuse->eeprom_cc & FUNC0(6)) << 10));
		}
	}
	/* update IQK related settings */
	FUNC10(hw, ROFDM0_XARXIQIMBALANCE, MASKDWORD, 0x40000100);
	FUNC10(hw, ROFDM0_XBRXIQIMBALANCE, MASKDWORD, 0x40000100);
	FUNC10(hw, ROFDM0_XCTXAFE, 0xF0000000, 0x00);
	FUNC10(hw, ROFDM0_ECCATHRESHOLD, FUNC0(30) | FUNC0(28) |
		      FUNC0(26) | FUNC0(24), 0x00);
	FUNC10(hw, ROFDM0_XDTXAFE, 0xF0000000, 0x00);
	FUNC10(hw, 0xca0, 0xF0000000, 0x00);
	FUNC10(hw, ROFDM0_AGCRSSITABLE, 0x0000F000, 0x00);

	/* Update RF */
	for (rfpath = RF90_PATH_A; rfpath < rtlphy->num_total_rfpath;
	     rfpath++) {
		if (rtlhal->current_bandtype == BAND_ON_2_4G) {
			/* MOD_AG for RF path_A 0x18 BIT8,BIT16 */
			FUNC11(hw, rfpath, RF_CHNLBW, FUNC0(8) | FUNC0(16) |
				      FUNC0(18), 0);
			/* RF0x0b[16:14] =3b'111 */
			FUNC11(hw, (enum radio_path)rfpath, 0x0B,
				      0x1c000, 0x07);
		} else {
			/* MOD_AG for RF path_A 0x18 BIT8,BIT16 */
			FUNC11(hw, rfpath, RF_CHNLBW, FUNC0(8) |
				      FUNC0(16) | FUNC0(18),
				      (FUNC0(16) | FUNC0(8)) >> 8);
		}
	}
	/* Update for all band. */
	/* DMDP */
	if (rtlphy->rf_type == RF_1T1R) {
		/* Use antenna 0,0xc04,0xd04 */
		FUNC10(hw, ROFDM0_TRXPATHENABLE, MASKBYTE0, 0x11);
		FUNC10(hw, ROFDM1_TRXPATHENABLE, BDWORD, 0x1);

		/* enable ad/da clock1 for dual-phy reg0x888 */
		if (rtlhal->interfaceindex == 0) {
			FUNC10(hw, RFPGA0_ADDALLOCKEN, FUNC0(12) |
				      FUNC0(13), 0x3);
		} else {
			FUNC2(hw, false);
			FUNC1(rtlpriv, COMP_INIT, DBG_LOUD,
				 "MAC1 use DBI to update 0x888\n");
			/* 0x888 */
			FUNC5(hw, RFPGA0_ADDALLOCKEN,
						FUNC4(hw,
						RFPGA0_ADDALLOCKEN,
						FUNC0(3)) | FUNC0(12) | FUNC0(13),
						FUNC0(3));
			FUNC3(hw, false);
		}
	} else {
		/* Single PHY */
		/* Use antenna 0 & 1,0xc04,0xd04 */
		FUNC10(hw, ROFDM0_TRXPATHENABLE, MASKBYTE0, 0x33);
		FUNC10(hw, ROFDM1_TRXPATHENABLE, BDWORD, 0x3);
		/* disable ad/da clock1,0x888 */
		FUNC10(hw, RFPGA0_ADDALLOCKEN, FUNC0(12) | FUNC0(13), 0);
	}
	for (rfpath = RF90_PATH_A; rfpath < rtlphy->num_total_rfpath;
	     rfpath++) {
		rtlphy->rfreg_chnlval[rfpath] = FUNC7(hw, rfpath,
						RF_CHNLBW, RFREG_OFFSET_MASK);
		rtlphy->reg_rf3c[rfpath] = FUNC7(hw, rfpath, 0x3C,
			RFREG_OFFSET_MASK);
	}
	for (i = 0; i < 2; i++)
		FUNC1(rtlpriv, COMP_RF, DBG_LOUD, "RF 0x18 = 0x%x\n",
			 rtlphy->rfreg_chnlval[i]);
	FUNC1(rtlpriv, COMP_INIT, DBG_LOUD, "<==\n");

}