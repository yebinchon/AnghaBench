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
typedef  scalar_t__ u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int EIO ; 
 scalar_t__ FWDL_CHKSUM_RPT ; 
 int /*<<< orphan*/  FW_8821AE_POLLING_DELAY ; 
 scalar_t__ FW_8821AE_POLLING_TIMEOUT_COUNT ; 
 scalar_t__ MCUFWDL_RDY ; 
 int /*<<< orphan*/  REG_MCUFWDL ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ WINTINI_RDY ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC3 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC3(hw);
	int err = -EIO;
	u32 counter = 0;
	u32 value32;

	do {
		value32 = FUNC4(rtlpriv, REG_MCUFWDL);
	} while ((counter++ < FW_8821AE_POLLING_TIMEOUT_COUNT) &&
		 (!(value32 & FWDL_CHKSUM_RPT)));

	if (counter >= FW_8821AE_POLLING_TIMEOUT_COUNT) {
		FUNC0(rtlpriv, COMP_ERR, DBG_LOUD,
			 "chksum report fail! REG_MCUFWDL:0x%08x .\n",
			  value32);
		goto exit;
	}
	value32 = FUNC4(rtlpriv, REG_MCUFWDL);
	value32 |= MCUFWDL_RDY;
	value32 &= ~WINTINI_RDY;
	FUNC5(rtlpriv, REG_MCUFWDL, value32);

	FUNC2(hw);

	counter = 0;
	do {
		value32 = FUNC4(rtlpriv, REG_MCUFWDL);
		if (value32 & WINTINI_RDY)
			return 0;

		FUNC6(FW_8821AE_POLLING_DELAY);
	} while (counter++ < FW_8821AE_POLLING_TIMEOUT_COUNT);

	FUNC1("Polling FW ready fail!! REG_MCUFWDL:0x%08x .\n",
	       value32);

exit:
	return err;
}