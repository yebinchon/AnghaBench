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
 int EIO ; 
 scalar_t__ FWDL_CHKSUM_RPT ; 
 int /*<<< orphan*/  FW_8192C_POLLING_DELAY ; 
 scalar_t__ FW_8192C_POLLING_TIMEOUT_COUNT ; 
 scalar_t__ MCUFWDL_RDY ; 
 int /*<<< orphan*/  REG_MCUFWDL ; 
 scalar_t__ WINTINI_RDY ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	int err = -EIO;
	u32 counter = 0;
	u32 value32;

	do {
		value32 = FUNC3(rtlpriv, REG_MCUFWDL);
	} while ((counter++ < FW_8192C_POLLING_TIMEOUT_COUNT) &&
		 (!(value32 & FWDL_CHKSUM_RPT)));

	if (counter >= FW_8192C_POLLING_TIMEOUT_COUNT) {
		FUNC0("chksum report fail! REG_MCUFWDL:0x%08x .\n",
		       value32);
		goto exit;
	}
	value32 = FUNC3(rtlpriv, REG_MCUFWDL);
	value32 |= MCUFWDL_RDY;
	value32 &= ~WINTINI_RDY;
	FUNC4(rtlpriv, REG_MCUFWDL, value32);

	FUNC1(hw);
	counter = 0;

	do {
		value32 = FUNC3(rtlpriv, REG_MCUFWDL);
		if (value32 & WINTINI_RDY)
			return 0;

		FUNC5(FW_8192C_POLLING_DELAY);

	} while (counter++ < FW_8192C_POLLING_TIMEOUT_COUNT);

	FUNC0("Polling FW ready fail!! REG_MCUFWDL:0x%08x .\n",
	       value32);

exit:
	return err;
}