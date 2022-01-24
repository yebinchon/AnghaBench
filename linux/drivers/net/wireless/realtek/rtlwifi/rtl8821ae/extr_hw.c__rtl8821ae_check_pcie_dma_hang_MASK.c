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
 int /*<<< orphan*/  COMP_INIT ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 scalar_t__ REG_DBI_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 int FUNC4 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,scalar_t__,int) ; 

__attribute__((used)) static bool FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	u8 tmp;

	/* write reg 0x350 Bit[26]=1. Enable debug port. */
	tmp = FUNC4(rtlpriv, REG_DBI_CTRL + 3);
	if (!(tmp & FUNC0(2))) {
		FUNC5(rtlpriv, REG_DBI_CTRL + 3, (tmp | FUNC0(2)));
		FUNC2(100);
	}

	/* read reg 0x350 Bit[25] if 1 : RX hang */
	/* read reg 0x350 Bit[24] if 1 : TX hang */
	tmp = FUNC4(rtlpriv, REG_DBI_CTRL + 3);
	if ((tmp & FUNC0(0)) || (tmp & FUNC0(1))) {
		FUNC1(rtlpriv, COMP_INIT, DBG_LOUD,
			 "CheckPcieDMAHang8821AE(): true! Reset PCIE DMA!\n");
		return true;
	} else {
		return false;
	}
}