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
typedef  int /*<<< orphan*/  u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int,int,int /*<<< orphan*/ *) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 

__attribute__((used)) static void FUNC3(struct ieee80211_hw *hw,
						 u8 retry_index)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	u8 h2c_parameter[1] = {0};
	h2c_parameter[0] = retry_index;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
		"[BTCoex], Set BT Retry Index=%d\n", retry_index);
	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_TRACE,
		"[BTCoex], write 0x23=0x%x\n", h2c_parameter[0]);

	FUNC1(hw, 0x23, 1, h2c_parameter);
}