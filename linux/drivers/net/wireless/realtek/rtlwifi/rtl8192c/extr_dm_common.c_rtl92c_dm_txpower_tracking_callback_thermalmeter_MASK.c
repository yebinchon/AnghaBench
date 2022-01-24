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
typedef  long u8 ;
struct TYPE_2__ {int txpower_trackinginit; long thermalvalue; long thermalvalue_lck; long thermalvalue_iqk; long* ofdm_index; long cck_index; scalar_t__ txpower_track_control; scalar_t__ cck_inch14; } ;
struct rtl_phy {long reg_e94; long reg_e9c; long reg_eb4; long reg_ebc; } ;
struct rtl_priv {TYPE_1__ dm; struct rtl_phy phy; } ;
struct rtl_hal {int /*<<< orphan*/  version; } ;
struct rtl_efuse {long eeprom_thermalmeter; } ;
struct ieee80211_hw {int dummy; } ;
typedef  int s8 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CCK_TABLE_LENGTH ; 
 int CCK_TABLE_SIZE ; 
 int /*<<< orphan*/  COMP_POWER_TRACKING ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 long MASKCCK ; 
 int MASKDWORD ; 
 int MASKH4BITS ; 
 long MASKOFDM_D ; 
 int OFDM_TABLE_LENGTH ; 
 int OFDM_TABLE_SIZE ; 
 int /*<<< orphan*/  RCCK0_TXFILTER2 ; 
 int /*<<< orphan*/  RF90_PATH_A ; 
 int /*<<< orphan*/  RF_T_METER ; 
 int /*<<< orphan*/  ROFDM0_ECCATHRESHOLD ; 
 int /*<<< orphan*/  ROFDM0_XATXIQIMBALANCE ; 
 int /*<<< orphan*/  ROFDM0_XBTXIQIMBALANCE ; 
 int /*<<< orphan*/  ROFDM0_XCTXAFE ; 
 int /*<<< orphan*/  ROFDM0_XDTXAFE ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ ** cckswing_table_ch14 ; 
 int /*<<< orphan*/ ** cckswing_table_ch1ch13 ; 
 scalar_t__ FUNC3 (void*,void*,int) ; 
 long* ofdmswing_table ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,long) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 struct rtl_efuse* FUNC7 (struct rtl_priv*) ; 
 long FUNC8 (struct ieee80211_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct rtl_hal* FUNC10 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC11 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rtl_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct ieee80211_hw
							     *hw)
{
	struct rtl_priv *rtlpriv = FUNC11(hw);
	struct rtl_hal *rtlhal = FUNC10(FUNC11(hw));
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct rtl_efuse *rtlefuse = FUNC7(FUNC11(hw));
	u8 thermalvalue, delta, delta_lck, delta_iqk;
	long ele_a, ele_d, temp_cck, val_x, value32;
	long val_y, ele_c = 0;
	u8 ofdm_index[2], ofdm_index_old[2] = {0, 0}, cck_index_old = 0;
	s8 cck_index = 0;
	int i;
	bool is2t = FUNC1(rtlhal->version);
	s8 txpwr_level[3] = {0, 0, 0};
	u8 ofdm_min_index = 6, rf;

	rtlpriv->dm.txpower_trackinginit = true;
	FUNC2(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
		 "rtl92c_dm_txpower_tracking_callback_thermalmeter\n");

	thermalvalue = (u8) FUNC9(hw, RF90_PATH_A, RF_T_METER, 0x1f);

	FUNC2(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
		 "Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermalmeter 0x%x\n",
		 thermalvalue, rtlpriv->dm.thermalvalue,
		 rtlefuse->eeprom_thermalmeter);

	FUNC4(hw, (thermalvalue -
				     rtlefuse->eeprom_thermalmeter));
	if (is2t)
		rf = 2;
	else
		rf = 1;

	if (thermalvalue) {
		ele_d = FUNC8(hw, ROFDM0_XATXIQIMBALANCE,
				      MASKDWORD) & MASKOFDM_D;

		for (i = 0; i < OFDM_TABLE_LENGTH; i++) {
			if (ele_d == (ofdmswing_table[i] & MASKOFDM_D)) {
				ofdm_index_old[0] = (u8) i;

				FUNC2(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
					 "Initial pathA ele_d reg0x%x = 0x%lx, ofdm_index=0x%x\n",
					 ROFDM0_XATXIQIMBALANCE,
					 ele_d, ofdm_index_old[0]);
				break;
			}
		}

		if (is2t) {
			ele_d = FUNC8(hw, ROFDM0_XBTXIQIMBALANCE,
					      MASKDWORD) & MASKOFDM_D;

			for (i = 0; i < OFDM_TABLE_LENGTH; i++) {
				if (ele_d == (ofdmswing_table[i] &
				    MASKOFDM_D)) {
					ofdm_index_old[1] = (u8) i;
					FUNC2(rtlpriv, COMP_POWER_TRACKING,
						 DBG_LOUD,
						 "Initial pathB ele_d reg0x%x = 0x%lx, ofdm_index=0x%x\n",
						 ROFDM0_XBTXIQIMBALANCE, ele_d,
						 ofdm_index_old[1]);
					break;
				}
			}
		}

		temp_cck =
		    FUNC8(hw, RCCK0_TXFILTER2, MASKDWORD) & MASKCCK;

		for (i = 0; i < CCK_TABLE_LENGTH; i++) {
			if (rtlpriv->dm.cck_inch14) {
				if (FUNC3((void *)&temp_cck,
					   (void *)&cckswing_table_ch14[i][2],
					   4) == 0) {
					cck_index_old = (u8) i;

					FUNC2(rtlpriv, COMP_POWER_TRACKING,
						 DBG_LOUD,
						 "Initial reg0x%x = 0x%lx, cck_index=0x%x, ch 14 %d\n",
						 RCCK0_TXFILTER2, temp_cck,
						 cck_index_old,
						 rtlpriv->dm.cck_inch14);
					break;
				}
			} else {
				if (FUNC3((void *)&temp_cck,
					   (void *)
					   &cckswing_table_ch1ch13[i][2],
					   4) == 0) {
					cck_index_old = (u8) i;

					FUNC2(rtlpriv, COMP_POWER_TRACKING,
						 DBG_LOUD,
						 "Initial reg0x%x = 0x%lx, cck_index=0x%x, ch14 %d\n",
						 RCCK0_TXFILTER2, temp_cck,
						 cck_index_old,
						 rtlpriv->dm.cck_inch14);
					break;
				}
			}
		}

		if (!rtlpriv->dm.thermalvalue) {
			rtlpriv->dm.thermalvalue =
			    rtlefuse->eeprom_thermalmeter;
			rtlpriv->dm.thermalvalue_lck = thermalvalue;
			rtlpriv->dm.thermalvalue_iqk = thermalvalue;
			for (i = 0; i < rf; i++)
				rtlpriv->dm.ofdm_index[i] = ofdm_index_old[i];
			rtlpriv->dm.cck_index = cck_index_old;
		}
		/* Handle USB High PA boards */

		delta = (thermalvalue > rtlpriv->dm.thermalvalue) ?
		    (thermalvalue - rtlpriv->dm.thermalvalue) :
		    (rtlpriv->dm.thermalvalue - thermalvalue);

		delta_lck = (thermalvalue > rtlpriv->dm.thermalvalue_lck) ?
		    (thermalvalue - rtlpriv->dm.thermalvalue_lck) :
		    (rtlpriv->dm.thermalvalue_lck - thermalvalue);

		delta_iqk = (thermalvalue > rtlpriv->dm.thermalvalue_iqk) ?
		    (thermalvalue - rtlpriv->dm.thermalvalue_iqk) :
		    (rtlpriv->dm.thermalvalue_iqk - thermalvalue);

		FUNC2(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
			 "Readback Thermal Meter = 0x%x pre thermal meter 0x%x eeprom_thermalmeter 0x%x delta 0x%x delta_lck 0x%x delta_iqk 0x%x\n",
			 thermalvalue, rtlpriv->dm.thermalvalue,
			 rtlefuse->eeprom_thermalmeter, delta, delta_lck,
			 delta_iqk);

		if (delta_lck > 1) {
			rtlpriv->dm.thermalvalue_lck = thermalvalue;
			FUNC6(hw);
		}

		if (delta > 0 && rtlpriv->dm.txpower_track_control) {
			if (thermalvalue > rtlpriv->dm.thermalvalue) {
				for (i = 0; i < rf; i++)
					rtlpriv->dm.ofdm_index[i] -= delta;
				rtlpriv->dm.cck_index -= delta;
			} else {
				for (i = 0; i < rf; i++)
					rtlpriv->dm.ofdm_index[i] += delta;
				rtlpriv->dm.cck_index += delta;
			}

			if (is2t) {
				FUNC2(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
					 "temp OFDM_A_index=0x%x, OFDM_B_index=0x%x, cck_index=0x%x\n",
					 rtlpriv->dm.ofdm_index[0],
					 rtlpriv->dm.ofdm_index[1],
					 rtlpriv->dm.cck_index);
			} else {
				FUNC2(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
					 "temp OFDM_A_index=0x%x, cck_index=0x%x\n",
					 rtlpriv->dm.ofdm_index[0],
					 rtlpriv->dm.cck_index);
			}

			if (thermalvalue > rtlefuse->eeprom_thermalmeter) {
				for (i = 0; i < rf; i++)
					ofdm_index[i] =
					    rtlpriv->dm.ofdm_index[i]
					    + 1;
				cck_index = rtlpriv->dm.cck_index + 1;
			} else {
				for (i = 0; i < rf; i++)
					ofdm_index[i] =
					    rtlpriv->dm.ofdm_index[i];
				cck_index = rtlpriv->dm.cck_index;
			}

			for (i = 0; i < rf; i++) {
				if (txpwr_level[i] >= 0 &&
				    txpwr_level[i] <= 26) {
					if (thermalvalue >
					    rtlefuse->eeprom_thermalmeter) {
						if (delta < 5)
							ofdm_index[i] -= 1;

						else
							ofdm_index[i] -= 2;
					} else if (delta > 5 && thermalvalue <
						   rtlefuse->
						   eeprom_thermalmeter) {
						ofdm_index[i] += 1;
					}
				} else if (txpwr_level[i] >= 27 &&
					   txpwr_level[i] <= 32
					   && thermalvalue >
					   rtlefuse->eeprom_thermalmeter) {
					if (delta < 5)
						ofdm_index[i] -= 1;

					else
						ofdm_index[i] -= 2;
				} else if (txpwr_level[i] >= 32 &&
					   txpwr_level[i] <= 38 &&
					   thermalvalue >
					   rtlefuse->eeprom_thermalmeter
					   && delta > 5) {
					ofdm_index[i] -= 1;
				}
			}

			if (txpwr_level[i] >= 0 && txpwr_level[i] <= 26) {
				if (thermalvalue >
				    rtlefuse->eeprom_thermalmeter) {
					if (delta < 5)
						cck_index -= 1;

					else
						cck_index -= 2;
				} else if (delta > 5 && thermalvalue <
					   rtlefuse->eeprom_thermalmeter) {
					cck_index += 1;
				}
			} else if (txpwr_level[i] >= 27 &&
				   txpwr_level[i] <= 32 &&
				   thermalvalue >
				   rtlefuse->eeprom_thermalmeter) {
				if (delta < 5)
					cck_index -= 1;

				else
					cck_index -= 2;
			} else if (txpwr_level[i] >= 32 &&
				   txpwr_level[i] <= 38 &&
				   thermalvalue > rtlefuse->eeprom_thermalmeter
				   && delta > 5) {
				cck_index -= 1;
			}

			for (i = 0; i < rf; i++) {
				if (ofdm_index[i] > OFDM_TABLE_SIZE - 1)
					ofdm_index[i] = OFDM_TABLE_SIZE - 1;

				else if (ofdm_index[i] < ofdm_min_index)
					ofdm_index[i] = ofdm_min_index;
			}

			if (cck_index > CCK_TABLE_SIZE - 1)
				cck_index = CCK_TABLE_SIZE - 1;
			else if (cck_index < 0)
				cck_index = 0;

			if (is2t) {
				FUNC2(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
					 "new OFDM_A_index=0x%x, OFDM_B_index=0x%x, cck_index=0x%x\n",
					 ofdm_index[0], ofdm_index[1],
					 cck_index);
			} else {
				FUNC2(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD,
					 "new OFDM_A_index=0x%x, cck_index=0x%x\n",
					 ofdm_index[0], cck_index);
			}
		}

		if (rtlpriv->dm.txpower_track_control && delta != 0) {
			ele_d =
			    (ofdmswing_table[ofdm_index[0]] & 0xFFC00000) >> 22;
			val_x = rtlphy->reg_e94;
			val_y = rtlphy->reg_e9c;

			if (val_x != 0) {
				if ((val_x & 0x00000200) != 0)
					val_x = val_x | 0xFFFFFC00;
				ele_a = ((val_x * ele_d) >> 8) & 0x000003FF;

				if ((val_y & 0x00000200) != 0)
					val_y = val_y | 0xFFFFFC00;
				ele_c = ((val_y * ele_d) >> 8) & 0x000003FF;

				value32 = (ele_d << 22) |
				    ((ele_c & 0x3F) << 16) | ele_a;

				FUNC12(hw, ROFDM0_XATXIQIMBALANCE,
					      MASKDWORD, value32);

				value32 = (ele_c & 0x000003C0) >> 6;
				FUNC12(hw, ROFDM0_XCTXAFE, MASKH4BITS,
					      value32);

				value32 = ((val_x * ele_d) >> 7) & 0x01;
				FUNC12(hw, ROFDM0_ECCATHRESHOLD,
					      FUNC0(31), value32);

				value32 = ((val_y * ele_d) >> 7) & 0x01;
				FUNC12(hw, ROFDM0_ECCATHRESHOLD,
					      FUNC0(29), value32);
			} else {
				FUNC12(hw, ROFDM0_XATXIQIMBALANCE,
					      MASKDWORD,
					      ofdmswing_table[ofdm_index[0]]);

				FUNC12(hw, ROFDM0_XCTXAFE, MASKH4BITS,
					      0x00);
				FUNC12(hw, ROFDM0_ECCATHRESHOLD,
					      FUNC0(31) | FUNC0(29), 0x00);
			}

			if (!rtlpriv->dm.cck_inch14) {
				FUNC13(rtlpriv, 0xa22,
					       cckswing_table_ch1ch13[cck_index]
					       [0]);
				FUNC13(rtlpriv, 0xa23,
					       cckswing_table_ch1ch13[cck_index]
					       [1]);
				FUNC13(rtlpriv, 0xa24,
					       cckswing_table_ch1ch13[cck_index]
					       [2]);
				FUNC13(rtlpriv, 0xa25,
					       cckswing_table_ch1ch13[cck_index]
					       [3]);
				FUNC13(rtlpriv, 0xa26,
					       cckswing_table_ch1ch13[cck_index]
					       [4]);
				FUNC13(rtlpriv, 0xa27,
					       cckswing_table_ch1ch13[cck_index]
					       [5]);
				FUNC13(rtlpriv, 0xa28,
					       cckswing_table_ch1ch13[cck_index]
					       [6]);
				FUNC13(rtlpriv, 0xa29,
					       cckswing_table_ch1ch13[cck_index]
					       [7]);
			} else {
				FUNC13(rtlpriv, 0xa22,
					       cckswing_table_ch14[cck_index]
					       [0]);
				FUNC13(rtlpriv, 0xa23,
					       cckswing_table_ch14[cck_index]
					       [1]);
				FUNC13(rtlpriv, 0xa24,
					       cckswing_table_ch14[cck_index]
					       [2]);
				FUNC13(rtlpriv, 0xa25,
					       cckswing_table_ch14[cck_index]
					       [3]);
				FUNC13(rtlpriv, 0xa26,
					       cckswing_table_ch14[cck_index]
					       [4]);
				FUNC13(rtlpriv, 0xa27,
					       cckswing_table_ch14[cck_index]
					       [5]);
				FUNC13(rtlpriv, 0xa28,
					       cckswing_table_ch14[cck_index]
					       [6]);
				FUNC13(rtlpriv, 0xa29,
					       cckswing_table_ch14[cck_index]
					       [7]);
			}

			if (is2t) {
				ele_d = (ofdmswing_table[ofdm_index[1]] &
					 0xFFC00000) >> 22;

				val_x = rtlphy->reg_eb4;
				val_y = rtlphy->reg_ebc;

				if (val_x != 0) {
					if ((val_x & 0x00000200) != 0)
						val_x = val_x | 0xFFFFFC00;
					ele_a = ((val_x * ele_d) >> 8) &
					    0x000003FF;

					if ((val_y & 0x00000200) != 0)
						val_y = val_y | 0xFFFFFC00;
					ele_c = ((val_y * ele_d) >> 8) &
					    0x00003FF;

					value32 = (ele_d << 22) |
					    ((ele_c & 0x3F) << 16) | ele_a;
					FUNC12(hw,
						      ROFDM0_XBTXIQIMBALANCE,
						      MASKDWORD, value32);

					value32 = (ele_c & 0x000003C0) >> 6;
					FUNC12(hw, ROFDM0_XDTXAFE,
						      MASKH4BITS, value32);

					value32 = ((val_x * ele_d) >> 7) & 0x01;
					FUNC12(hw, ROFDM0_ECCATHRESHOLD,
						      FUNC0(27), value32);

					value32 = ((val_y * ele_d) >> 7) & 0x01;
					FUNC12(hw, ROFDM0_ECCATHRESHOLD,
						      FUNC0(25), value32);
				} else {
					FUNC12(hw,
						      ROFDM0_XBTXIQIMBALANCE,
						      MASKDWORD,
						      ofdmswing_table[ofdm_index
								      [1]]);
					FUNC12(hw, ROFDM0_XDTXAFE,
						      MASKH4BITS, 0x00);
					FUNC12(hw, ROFDM0_ECCATHRESHOLD,
						      FUNC0(27) | FUNC0(25), 0x00);
				}

			}
		}

		if (delta_iqk > 3) {
			rtlpriv->dm.thermalvalue_iqk = thermalvalue;
			FUNC5(hw, false);
		}

		if (rtlpriv->dm.txpower_track_control)
			rtlpriv->dm.thermalvalue = thermalvalue;
	}

	FUNC2(rtlpriv, COMP_POWER_TRACKING, DBG_LOUD, "<===\n");

}