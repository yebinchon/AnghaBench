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
typedef  int u64 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_TURBO ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC2(
	struct ieee80211_hw *hw, u64 cur_tx_bytes,
	u64 cur_rx_bytes, bool b_bias_on_rx,
	bool *pb_is_cur_rdl_state)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);

	if (b_bias_on_rx) {
		if (cur_tx_bytes > (cur_rx_bytes*4)) {
			*pb_is_cur_rdl_state = false;
			FUNC0(rtlpriv, COMP_TURBO, DBG_LOUD,
				 "Uplink Traffic\n");
		} else {
			*pb_is_cur_rdl_state = true;
			FUNC0(rtlpriv, COMP_TURBO, DBG_LOUD,
				 "Balance Traffic\n");
		}
	} else {
		if (cur_rx_bytes > (cur_tx_bytes*4)) {
			*pb_is_cur_rdl_state = true;
			FUNC0(rtlpriv, COMP_TURBO, DBG_LOUD,
				 "Downlink	Traffic\n");
		} else {
			*pb_is_cur_rdl_state = false;
			FUNC0(rtlpriv, COMP_TURBO, DBG_LOUD,
				 "Balance Traffic\n");
		}
	}
	return;
}