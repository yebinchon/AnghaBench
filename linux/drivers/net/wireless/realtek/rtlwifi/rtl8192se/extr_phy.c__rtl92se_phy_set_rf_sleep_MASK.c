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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMDR ; 
 int /*<<< orphan*/  LDOV12D_CTRL ; 
 int /*<<< orphan*/  PHY_CCA ; 
 int /*<<< orphan*/  SPS1_CTRL ; 
 int /*<<< orphan*/  TXPAUSE ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	u8 u1btmp;

	u1btmp = FUNC3(rtlpriv, LDOV12D_CTRL);
	u1btmp |= FUNC0(0);

	FUNC4(rtlpriv, LDOV12D_CTRL, u1btmp);
	FUNC4(rtlpriv, SPS1_CTRL, 0x0);
	FUNC4(rtlpriv, TXPAUSE, 0xFF);
	FUNC5(rtlpriv, CMDR, 0x57FC);
	FUNC6(100);

	FUNC5(rtlpriv, CMDR, 0x77FC);
	FUNC4(rtlpriv, PHY_CCA, 0x0);
	FUNC6(10);

	FUNC5(rtlpriv, CMDR, 0x37FC);
	FUNC6(10);

	FUNC5(rtlpriv, CMDR, 0x77FC);
	FUNC6(10);

	FUNC5(rtlpriv, CMDR, 0x57FC);

	/* we should chnge GPIO to input mode
	 * this will drop away current about 25mA*/
	FUNC1(hw);
}