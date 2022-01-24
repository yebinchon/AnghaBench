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
typedef  int u32 ;
struct ps_t {int rssi_val_min; scalar_t__ pre_rfstate; scalar_t__ cur_rfstate; } ;
struct rtl_priv {struct ps_t dm_pstable; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MASKDWORD ; 
 int RFPGA0_XCD_RFINTERFACESW ; 
 int RFPGA0_XCD_SWITCHCONTROL ; 
 scalar_t__ RF_MAX ; 
 scalar_t__ RF_NORMAL ; 
 scalar_t__ RF_SAVE ; 
 int ROFDM0_AGCPARAMETER1 ; 
 int FUNC1 (struct ieee80211_hw*,int,int /*<<< orphan*/ ) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int,int,int) ; 

void FUNC4(struct ieee80211_hw *hw, u8 bforce_in_normal)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct ps_t *dm_pstable = &rtlpriv->dm_pstable;
	static u8 initialize;
	static u32 reg_874, reg_c70, reg_85c, reg_a74;

	if (initialize == 0) {
		reg_874 = (FUNC1(hw, RFPGA0_XCD_RFINTERFACESW,
					 MASKDWORD) & 0x1CC000) >> 14;

		reg_c70 = (FUNC1(hw, ROFDM0_AGCPARAMETER1,
					 MASKDWORD) & FUNC0(3)) >> 3;

		reg_85c = (FUNC1(hw, RFPGA0_XCD_SWITCHCONTROL,
					 MASKDWORD) & 0xFF000000) >> 24;

		reg_a74 = (FUNC1(hw, 0xa74, MASKDWORD) & 0xF000) >> 12;

		initialize = 1;
	}

	if (!bforce_in_normal) {
		if (dm_pstable->rssi_val_min != 0) {
			if (dm_pstable->pre_rfstate == RF_NORMAL) {
				if (dm_pstable->rssi_val_min >= 30)
					dm_pstable->cur_rfstate = RF_SAVE;
				else
					dm_pstable->cur_rfstate = RF_NORMAL;
			} else {
				if (dm_pstable->rssi_val_min <= 25)
					dm_pstable->cur_rfstate = RF_NORMAL;
				else
					dm_pstable->cur_rfstate = RF_SAVE;
			}
		} else {
			dm_pstable->cur_rfstate = RF_MAX;
		}
	} else {
		dm_pstable->cur_rfstate = RF_NORMAL;
	}

	if (dm_pstable->pre_rfstate != dm_pstable->cur_rfstate) {
		if (dm_pstable->cur_rfstate == RF_SAVE) {
			FUNC3(hw, RFPGA0_XCD_RFINTERFACESW,
				      FUNC0(5), 0x1);
			FUNC3(hw, RFPGA0_XCD_RFINTERFACESW,
				      0x1C0000, 0x2);
			FUNC3(hw, ROFDM0_AGCPARAMETER1, FUNC0(3), 0);
			FUNC3(hw, RFPGA0_XCD_SWITCHCONTROL,
				      0xFF000000, 0x63);
			FUNC3(hw, RFPGA0_XCD_RFINTERFACESW,
				      0xC000, 0x2);
			FUNC3(hw, 0xa74, 0xF000, 0x3);
			FUNC3(hw, 0x818, FUNC0(28), 0x0);
			FUNC3(hw, 0x818, FUNC0(28), 0x1);
		} else {
			FUNC3(hw, RFPGA0_XCD_RFINTERFACESW,
				      0x1CC000, reg_874);
			FUNC3(hw, ROFDM0_AGCPARAMETER1, FUNC0(3),
				      reg_c70);
			FUNC3(hw, RFPGA0_XCD_SWITCHCONTROL, 0xFF000000,
				      reg_85c);
			FUNC3(hw, 0xa74, 0xF000, reg_a74);
			FUNC3(hw, 0x818, FUNC0(28), 0x0);
			FUNC3(hw, RFPGA0_XCD_RFINTERFACESW,
				      FUNC0(5), 0x0);
		}

		dm_pstable->pre_rfstate = dm_pstable->cur_rfstate;
	}
}