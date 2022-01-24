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
struct TYPE_2__ {scalar_t__ current_bandtype; int /*<<< orphan*/  load_imrandiqk_setting_for2g; } ;
struct rtl_priv {TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum radio_path { ____Placeholder_radio_path } radio_path ;

/* Variables and functions */
 scalar_t__ BAND_ON_5G ; 
 int BCCKEN ; 
 int FUNC0 (int) ; 
 int BOFDMEN ; 
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  COMP_SCAN ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int MAX_RF_IMR_INDEX ; 
 int MAX_RF_IMR_INDEX_NORMAL ; 
 int /*<<< orphan*/  RFPGA0_ANALOGPARAMETER4 ; 
 int /*<<< orphan*/  RFPGA0_RFMOD ; 
 int RFREG_OFFSET_MASK ; 
 int /*<<< orphan*/  ROFDM1_CFOTRACKING ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ *** rf_imr_param_normal ; 
 int /*<<< orphan*/ * rf_reg_for_5g_swchnl_normal ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,unsigned long*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw,
	u8 channel, u8 rfpath)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	u32 imr_num = MAX_RF_IMR_INDEX;
	u32 rfmask = RFREG_OFFSET_MASK;
	u8 group, i;
	unsigned long flag = 0;

	FUNC1(rtlpriv, COMP_CMD, DBG_LOUD, "====>path %d\n", rfpath);
	if (rtlpriv->rtlhal.current_bandtype == BAND_ON_5G) {
		FUNC1(rtlpriv, COMP_CMD, DBG_LOUD, "====>5G\n");
		FUNC5(hw, RFPGA0_RFMOD, FUNC0(25) | FUNC0(24), 0);
		FUNC5(hw, RFPGA0_ANALOGPARAMETER4, 0x00f00000, 0xf);
		/* fc area 0xd2c */
		if (channel > 99)
			FUNC5(hw, ROFDM1_CFOTRACKING, FUNC0(13) |
				      FUNC0(14), 2);
		else
			FUNC5(hw, ROFDM1_CFOTRACKING, FUNC0(13) |
				      FUNC0(14), 1);
		/* leave 0 for channel1-14. */
		group = channel <= 64 ? 1 : 2;
		imr_num = MAX_RF_IMR_INDEX_NORMAL;
		for (i = 0; i < imr_num; i++)
			FUNC6(hw, (enum radio_path)rfpath,
				      rf_reg_for_5g_swchnl_normal[i], rfmask,
				      rf_imr_param_normal[0][group][i]);
		FUNC5(hw, RFPGA0_ANALOGPARAMETER4, 0x00f00000, 0);
		FUNC5(hw, RFPGA0_RFMOD, BOFDMEN, 1);
	} else {
		/* G band. */
		FUNC1(rtlpriv, COMP_SCAN, DBG_LOUD,
			 "Load RF IMR parameters for G band. IMR already setting %d\n",
			 rtlpriv->rtlhal.load_imrandiqk_setting_for2g);
		FUNC1(rtlpriv, COMP_CMD, DBG_LOUD, "====>2.4G\n");
		if (!rtlpriv->rtlhal.load_imrandiqk_setting_for2g) {
			FUNC1(rtlpriv, COMP_SCAN, DBG_LOUD,
				 "Load RF IMR parameters for G band. %d\n",
				 rfpath);
			FUNC2(hw, &flag);
			FUNC5(hw, RFPGA0_RFMOD, FUNC0(25) | FUNC0(24), 0);
			FUNC5(hw, RFPGA0_ANALOGPARAMETER4,
				      0x00f00000, 0xf);
			imr_num = MAX_RF_IMR_INDEX_NORMAL;
			for (i = 0; i < imr_num; i++) {
				FUNC6(hw, (enum radio_path)rfpath,
					      rf_reg_for_5g_swchnl_normal[i],
					      RFREG_OFFSET_MASK,
					      rf_imr_param_normal[0][0][i]);
			}
			FUNC5(hw, RFPGA0_ANALOGPARAMETER4,
				      0x00f00000, 0);
			FUNC5(hw, RFPGA0_RFMOD, BOFDMEN | BCCKEN, 3);
			FUNC3(hw, &flag);
		}
	}
	FUNC1(rtlpriv, COMP_CMD, DBG_LOUD, "<====\n");
}