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
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_FW ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 scalar_t__ REG_HMETFR ; 
 scalar_t__ REG_SYS_FUNC_EN ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int FUNC4 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	u8 u1b_tmp;
	u8 delay = 100;

	/* Set (REG_HMETFR + 3) to  0x20 is reset 8051 */
	FUNC5(rtlpriv, REG_HMETFR + 3, 0x20);
	u1b_tmp = FUNC4(rtlpriv, REG_SYS_FUNC_EN + 1);
	while (u1b_tmp & FUNC0(2)) {
		delay--;
		if (delay == 0)
			break;
		FUNC6(50);
		u1b_tmp = FUNC4(rtlpriv, REG_SYS_FUNC_EN + 1);
	}
	FUNC2((delay <= 0), "rtl8192de: 8051 reset failed!\n");
	FUNC1(rtlpriv, COMP_FW, DBG_DMESG,
		 "=====> 8051 reset success (%d)\n", delay);
}