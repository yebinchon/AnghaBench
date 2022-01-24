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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct rtl_phy {scalar_t__ current_chan_bw; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct btdm_8723 {int rf_rx_lpf_shrink; int low_penalty_rate_adaptive; int reject_aggre_pkt; int val_0x6c0; int val_0x6c8; int val_0x6cc; int agc_table_en; int adc_back_off_on; int sw_dac_swing_on; int ps_tdma_on; int* ps_tdma_byte; int dec_bt_pwr; } ;
struct TYPE_2__ {scalar_t__ bt_inq_page_start_time; } ;

/* Variables and functions */
 scalar_t__ BT_RSSI_STATE_HIGH ; 
 scalar_t__ BT_RSSI_STATE_STAY_HIGH ; 
 scalar_t__ BT_TXRX_CNT_LEVEL_1 ; 
 scalar_t__ BT_TXRX_CNT_LEVEL_2 ; 
 scalar_t__ BT_TXRX_CNT_LEVEL_3 ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 scalar_t__ HT_CHANNEL_WIDTH_20_40 ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__ hal_coex_8723 ; 
 scalar_t__ FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,struct btdm_8723*) ; 
 scalar_t__ FUNC3 (struct ieee80211_hw*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ieee80211_hw*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,struct btdm_8723*) ; 
 struct rtl_priv* FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl_priv*,int,int) ; 

__attribute__((used)) static void FUNC10(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC8(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct btdm_8723 btdm8723;

	u8 bt_rssi_state, bt_rssi_state1;
	u32 bt_tx_rx_cnt_lvl = 0;

	FUNC2(hw, &btdm8723);

	btdm8723.rf_rx_lpf_shrink = true;
	btdm8723.low_penalty_rate_adaptive = true;
	btdm8723.reject_aggre_pkt = false;

	bt_tx_rx_cnt_lvl = FUNC1(hw);

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
	"[BTCoex], BT TxRx Counters = %d\n", bt_tx_rx_cnt_lvl);

	if (rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_20_40) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG, "HT40\n");
		bt_rssi_state =
		  FUNC3(hw, 2, 37, 0);

		/* coex table */
		btdm8723.val_0x6c0 = 0x55555555;
		btdm8723.val_0x6c8 = 0xffff;
		btdm8723.val_0x6cc = 0x3;

		/* sw mechanism */
		btdm8723.agc_table_en = false;
		btdm8723.adc_back_off_on = true;
		btdm8723.sw_dac_swing_on = false;

		/* fw mechanism */
		btdm8723.ps_tdma_on = true;
		if ((bt_rssi_state == BT_RSSI_STATE_HIGH) ||
			(bt_rssi_state == BT_RSSI_STATE_STAY_HIGH)) {
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
						"Wifi rssi high\n");
			if (bt_tx_rx_cnt_lvl == BT_TXRX_CNT_LEVEL_2) {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
				"[BTCoex], BT TxRx Counters >= 1400\n");
				btdm8723.ps_tdma_byte[0] = 0xa3;
				btdm8723.ps_tdma_byte[1] = 0x5;
				btdm8723.ps_tdma_byte[2] = 0x5;
				btdm8723.ps_tdma_byte[3] = 0x81;
				btdm8723.ps_tdma_byte[4] = 0x80;
			} else if (bt_tx_rx_cnt_lvl == BT_TXRX_CNT_LEVEL_1) {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
					 "[BTCoex], BT TxRx Counters >= 1200 && < 1400\n");
				btdm8723.ps_tdma_byte[0] = 0xa3;
				btdm8723.ps_tdma_byte[1] = 0xa;
				btdm8723.ps_tdma_byte[2] = 0xa;
				btdm8723.ps_tdma_byte[3] = 0x81;
				btdm8723.ps_tdma_byte[4] = 0x80;
			} else {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
					 "[BTCoex], BT TxRx Counters < 1200\n");
				btdm8723.ps_tdma_byte[0] = 0xa3;
				btdm8723.ps_tdma_byte[1] = 0xf;
				btdm8723.ps_tdma_byte[2] = 0xf;
				btdm8723.ps_tdma_byte[3] = 0x81;
				btdm8723.ps_tdma_byte[4] = 0x80;
			}
		} else {
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
				 "Wifi rssi low\n");
			if (bt_tx_rx_cnt_lvl == BT_TXRX_CNT_LEVEL_2) {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
					 "[BTCoex], BT TxRx Counters >= 1400\n");
				btdm8723.ps_tdma_byte[0] = 0xa3;
				btdm8723.ps_tdma_byte[1] = 0x5;
				btdm8723.ps_tdma_byte[2] = 0x5;
				btdm8723.ps_tdma_byte[3] = 0x0;
				btdm8723.ps_tdma_byte[4] = 0x80;
			} else if (bt_tx_rx_cnt_lvl ==
				BT_TXRX_CNT_LEVEL_1) {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
					 "[BTCoex], BT TxRx Counters >= 1200 && < 1400\n");
				btdm8723.ps_tdma_byte[0] = 0xa3;
				btdm8723.ps_tdma_byte[1] = 0xa;
				btdm8723.ps_tdma_byte[2] = 0xa;
				btdm8723.ps_tdma_byte[3] = 0x0;
				btdm8723.ps_tdma_byte[4] = 0x80;
			} else {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
					 "[BTCoex], BT TxRx Counters < 1200\n");
				btdm8723.ps_tdma_byte[0] = 0xa3;
				btdm8723.ps_tdma_byte[1] = 0xf;
				btdm8723.ps_tdma_byte[2] = 0xf;
				btdm8723.ps_tdma_byte[3] = 0x0;
				btdm8723.ps_tdma_byte[4] = 0x80;
			}
		}
	} else {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "HT20 or Legacy\n");
		bt_rssi_state =
		  FUNC3(hw, 2, 47, 0);
		bt_rssi_state1 =
		  FUNC4(hw, 2, 27, 0);

		/* coex table */
		btdm8723.val_0x6c0 = 0x55555555;
		btdm8723.val_0x6c8 = 0xffff;
		btdm8723.val_0x6cc = 0x3;

		/* sw mechanism */
		if ((bt_rssi_state == BT_RSSI_STATE_HIGH) ||
			(bt_rssi_state == BT_RSSI_STATE_STAY_HIGH)) {
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
				 "Wifi rssi high\n");
			btdm8723.agc_table_en = true;
			btdm8723.adc_back_off_on = true;
			btdm8723.sw_dac_swing_on = false;
		} else {
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
				 "Wifi rssi low\n");
			btdm8723.agc_table_en = false;
			btdm8723.adc_back_off_on = false;
			btdm8723.sw_dac_swing_on = false;
		}

		/* fw mechanism */
		btdm8723.ps_tdma_on = true;
		if ((bt_rssi_state1 == BT_RSSI_STATE_HIGH) ||
			(bt_rssi_state1 == BT_RSSI_STATE_STAY_HIGH)) {
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
				 "Wifi rssi-1 high\n");
			/* only rssi high we need to do this, */
			/* when rssi low, the value will modified by fw */
			FUNC9(rtlpriv, 0x883, 0x40);
			if (bt_tx_rx_cnt_lvl == BT_TXRX_CNT_LEVEL_2) {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
					 "[BTCoex], BT TxRx Counters >= 1400\n");
				btdm8723.ps_tdma_byte[0] = 0xa3;
				btdm8723.ps_tdma_byte[1] = 0x5;
				btdm8723.ps_tdma_byte[2] = 0x5;
				btdm8723.ps_tdma_byte[3] = 0x81;
				btdm8723.ps_tdma_byte[4] = 0x80;
			} else if (bt_tx_rx_cnt_lvl == BT_TXRX_CNT_LEVEL_1) {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
					 "[BTCoex], BT TxRx Counters >= 1200 && < 1400\n");
				btdm8723.ps_tdma_byte[0] = 0xa3;
				btdm8723.ps_tdma_byte[1] = 0xa;
				btdm8723.ps_tdma_byte[2] = 0xa;
				btdm8723.ps_tdma_byte[3] = 0x81;
				btdm8723.ps_tdma_byte[4] = 0x80;
			} else {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
					 "[BTCoex], BT TxRx Counters < 1200\n");
				btdm8723.ps_tdma_byte[0] = 0xa3;
				btdm8723.ps_tdma_byte[1] = 0xf;
				btdm8723.ps_tdma_byte[2] = 0xf;
				btdm8723.ps_tdma_byte[3] = 0x81;
				btdm8723.ps_tdma_byte[4] = 0x80;
			}
		} else {
			FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
				 "Wifi rssi-1 low\n");
			if (bt_tx_rx_cnt_lvl == BT_TXRX_CNT_LEVEL_2) {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
					 "[BTCoex], BT TxRx Counters >= 1400\n");
				btdm8723.ps_tdma_byte[0] = 0xa3;
				btdm8723.ps_tdma_byte[1] = 0x5;
				btdm8723.ps_tdma_byte[2] = 0x5;
				btdm8723.ps_tdma_byte[3] = 0x0;
				btdm8723.ps_tdma_byte[4] = 0x80;
			} else if (bt_tx_rx_cnt_lvl == BT_TXRX_CNT_LEVEL_1) {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
					 "[BTCoex], BT TxRx Counters >= 1200 && < 1400\n");
				btdm8723.ps_tdma_byte[0] = 0xa3;
				btdm8723.ps_tdma_byte[1] = 0xa;
				btdm8723.ps_tdma_byte[2] = 0xa;
				btdm8723.ps_tdma_byte[3] = 0x0;
				btdm8723.ps_tdma_byte[4] = 0x80;
			} else {
				FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
					 "[BTCoex], BT TxRx Counters < 1200\n");
				btdm8723.ps_tdma_byte[0] = 0xa3;
				btdm8723.ps_tdma_byte[1] = 0xf;
				btdm8723.ps_tdma_byte[2] = 0xf;
				btdm8723.ps_tdma_byte[3] = 0x0;
				btdm8723.ps_tdma_byte[4] = 0x80;
			}
		}
	}

	if (FUNC6(hw))
		btdm8723.dec_bt_pwr = true;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
		 "[BTCoex], BT btInqPageStartTime = 0x%x, btTxRxCntLvl = %d\n",
		 hal_coex_8723.bt_inq_page_start_time, bt_tx_rx_cnt_lvl);

	if ((hal_coex_8723.bt_inq_page_start_time) ||
	    (BT_TXRX_CNT_LEVEL_3 == bt_tx_rx_cnt_lvl)) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], Set BT inquiry / page scan 0x3a setting\n");
		btdm8723.ps_tdma_on = true;
		btdm8723.ps_tdma_byte[0] = 0xa3;
		btdm8723.ps_tdma_byte[1] = 0x5;
		btdm8723.ps_tdma_byte[2] = 0x5;
		btdm8723.ps_tdma_byte[3] = 0x83;
		btdm8723.ps_tdma_byte[4] = 0x80;
	}

	if (FUNC5(hw))
		FUNC7(hw, &btdm8723);

}