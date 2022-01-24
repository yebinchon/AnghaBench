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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int cstate_h; } ;
struct rtl_priv {TYPE_1__ btcoexist; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int BT_COEX_STATE_BT_CNT_LEVEL_0 ; 
 int BT_COEX_STATE_BT_CNT_LEVEL_1 ; 
 int BT_COEX_STATE_BT_CNT_LEVEL_2 ; 
 int BT_COEX_STATE_BT_CNT_LEVEL_3 ; 
 int /*<<< orphan*/  BT_TXRX_CNT_LEVEL_0 ; 
 int /*<<< orphan*/  BT_TXRX_CNT_LEVEL_1 ; 
 int /*<<< orphan*/  BT_TXRX_CNT_LEVEL_2 ; 
 int /*<<< orphan*/  BT_TXRX_CNT_LEVEL_3 ; 
 scalar_t__ BT_TXRX_CNT_THRES_1 ; 
 scalar_t__ BT_TXRX_CNT_THRES_2 ; 
 scalar_t__ BT_TXRX_CNT_THRES_3 ; 
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 

__attribute__((used)) static u8 FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	u32	bt_tx_rx_cnt = 0;
	u8	bt_tx_rx_cnt_lvl = 0;

	bt_tx_rx_cnt = FUNC1(hw)
				+ FUNC2(hw);
	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
		 "[BTCoex], BT TxRx Counters = %d\n", bt_tx_rx_cnt);

	rtlpriv->btcoexist.cstate_h &= ~
		 (BT_COEX_STATE_BT_CNT_LEVEL_0 | BT_COEX_STATE_BT_CNT_LEVEL_1|
		  BT_COEX_STATE_BT_CNT_LEVEL_2);

	if (bt_tx_rx_cnt >= BT_TXRX_CNT_THRES_3) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], BT TxRx Counters at level 3\n");
		bt_tx_rx_cnt_lvl = BT_TXRX_CNT_LEVEL_3;
		rtlpriv->btcoexist.cstate_h |=
			BT_COEX_STATE_BT_CNT_LEVEL_3;
	} else if (bt_tx_rx_cnt >= BT_TXRX_CNT_THRES_2) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], BT TxRx Counters at level 2\n");
		bt_tx_rx_cnt_lvl = BT_TXRX_CNT_LEVEL_2;
		rtlpriv->btcoexist.cstate_h |=
			BT_COEX_STATE_BT_CNT_LEVEL_2;
	} else if (bt_tx_rx_cnt >= BT_TXRX_CNT_THRES_1) {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], BT TxRx Counters at level 1\n");
		bt_tx_rx_cnt_lvl = BT_TXRX_CNT_LEVEL_1;
		rtlpriv->btcoexist.cstate_h  |=
			BT_COEX_STATE_BT_CNT_LEVEL_1;
	} else {
		FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_DMESG,
			 "[BTCoex], BT TxRx Counters at level 0\n");
		bt_tx_rx_cnt_lvl = BT_TXRX_CNT_LEVEL_0;
		rtlpriv->btcoexist.cstate_h |=
			BT_COEX_STATE_BT_CNT_LEVEL_0;
	}
	return bt_tx_rx_cnt_lvl;
}