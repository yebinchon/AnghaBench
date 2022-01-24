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
struct TYPE_2__ {int /*<<< orphan*/  cstate; scalar_t__ bt_busy; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;
struct btdm_8723 {int low_penalty_rate_adaptive; int rf_rx_lpf_shrink; int reject_aggre_pkt; int agc_table_en; int adc_back_off_on; int sw_dac_swing_on; int pta_on; int val_0x6c0; int val_0x6c8; int val_0x6cc; int tdma_on; int b2_ant_hid_en; int dec_bt_pwr; void* tdma_dac_swing; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_COEX_STATE_BTINFO_COMMON ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 scalar_t__ RT_MEDIA_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* TDMA_DAC_SWING_OFF ; 
 scalar_t__ FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct btdm_8723*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,struct btdm_8723*) ; 
 scalar_t__ FUNC4 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC5 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,struct btdm_8723*) ; 
 struct rtl_priv* FUNC8 (struct ieee80211_hw*) ; 

__attribute__((used)) static bool FUNC9(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC8(hw);
	struct btdm_8723 btdm8723;
	bool b_common = false;

	FUNC2(hw, &btdm8723);

	if (!FUNC5(hw) &&
	    !rtlpriv->btcoexist.bt_busy) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "Wifi idle + Bt idle, bt coex mechanism always off!!\n");
		FUNC3(hw, &btdm8723);
		b_common = true;
	} else if (FUNC5(hw) &&
		   !rtlpriv->btcoexist.bt_busy) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "Wifi non-idle + Bt disabled/idle!!\n");
		btdm8723.low_penalty_rate_adaptive = true;
		btdm8723.rf_rx_lpf_shrink = false;
		btdm8723.reject_aggre_pkt = false;

		/* sw mechanism */
		btdm8723.agc_table_en = false;
		btdm8723.adc_back_off_on = false;
		btdm8723.sw_dac_swing_on = false;

		btdm8723.pta_on = true;
		btdm8723.val_0x6c0 = 0x5a5aaaaa;
		btdm8723.val_0x6c8 = 0xcccc;
		btdm8723.val_0x6cc = 0x3;

		btdm8723.tdma_on = false;
		btdm8723.tdma_dac_swing = TDMA_DAC_SWING_OFF;
		btdm8723.b2_ant_hid_en = false;

		b_common = true;
	} else if (rtlpriv->btcoexist.bt_busy) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			"Bt non-idle!\n");
		if (FUNC1(hw) == RT_MEDIA_CONNECT) {
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
				"Wifi connection exist\n");
			b_common = false;
		} else {
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
				"No Wifi connection!\n");
			btdm8723.rf_rx_lpf_shrink = true;
			btdm8723.low_penalty_rate_adaptive = false;
			btdm8723.reject_aggre_pkt = false;

			/* sw mechanism */
			btdm8723.agc_table_en = false;
			btdm8723.adc_back_off_on = false;
			btdm8723.sw_dac_swing_on = false;

			btdm8723.pta_on = true;
			btdm8723.val_0x6c0 = 0x55555555;
			btdm8723.val_0x6c8 = 0x0000ffff;
			btdm8723.val_0x6cc = 0x3;

			btdm8723.tdma_on = false;
			btdm8723.tdma_dac_swing = TDMA_DAC_SWING_OFF;
			btdm8723.b2_ant_hid_en = false;

			b_common = true;
		}
	}

	if (FUNC6(hw))
		btdm8723.dec_bt_pwr = true;

	if (b_common)
		rtlpriv->btcoexist.cstate |=
			BT_COEX_STATE_BTINFO_COMMON;

	if (b_common && FUNC4(hw))
		FUNC7(hw, &btdm8723);

	return b_common;
}