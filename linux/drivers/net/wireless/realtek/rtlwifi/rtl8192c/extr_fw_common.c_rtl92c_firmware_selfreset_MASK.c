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
 scalar_t__ REG_HMETFR ; 
 scalar_t__ REG_SYS_FUNC_EN ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct ieee80211_hw *hw)
{
	u8 u1b_tmp;
	u8 delay = 100;
	struct rtl_priv *rtlpriv = FUNC2(hw);

	FUNC4(rtlpriv, REG_HMETFR + 3, 0x20);
	u1b_tmp = FUNC3(rtlpriv, REG_SYS_FUNC_EN + 1);

	while (u1b_tmp & FUNC0(2)) {
		delay--;
		if (delay == 0) {
			FUNC1(true, "rtl8192c-common: 8051 reset fail.\n");
			break;
		}
		FUNC5(50);
		u1b_tmp = FUNC3(rtlpriv, REG_SYS_FUNC_EN + 1);
	}
}