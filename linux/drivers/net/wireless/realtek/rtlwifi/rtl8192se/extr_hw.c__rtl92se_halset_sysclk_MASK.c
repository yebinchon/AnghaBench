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
 scalar_t__ SYS_CLKR ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static u8 FUNC6(struct ieee80211_hw *hw, u8 data)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	u8 waitcount = 100;
	bool bresult = false;
	u8 tmpvalue;

	FUNC4(rtlpriv, SYS_CLKR + 1, data);

	/* Wait the MAC synchronized. */
	FUNC5(400);

	/* Check if it is set ready. */
	tmpvalue = FUNC3(rtlpriv, SYS_CLKR + 1);
	bresult = ((tmpvalue & FUNC0(7)) == (data & FUNC0(7)));

	if ((data & (FUNC0(6) | FUNC0(7))) == false) {
		waitcount = 100;
		tmpvalue = 0;

		while (1) {
			waitcount--;

			tmpvalue = FUNC3(rtlpriv, SYS_CLKR + 1);
			if ((tmpvalue & FUNC0(6)))
				break;

			FUNC1("wait for BIT(6) return value %x\n", tmpvalue);
			if (waitcount == 0)
				break;

			FUNC5(10);
		}

		if (waitcount == 0)
			bresult = false;
		else
			bresult = true;
	}

	return bresult;
}