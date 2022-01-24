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
typedef  int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_FW ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int EIO ; 
 int FWDL_CHKSUM_RPT ; 
 int /*<<< orphan*/  FW_8192C_POLLING_DELAY ; 
 int MCUFWDL_RDY ; 
 int /*<<< orphan*/  REG_MCUFWDL ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int WINTINI_RDY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 struct rtl_priv* FUNC4 (struct ieee80211_hw*) ; 
 int FUNC5 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct ieee80211_hw *hw, bool is_8723be,
			  int max_count)
{
	struct rtl_priv *rtlpriv = FUNC4(hw);
	int err = -EIO;
	u32 counter = 0;
	u32 value32;

	do {
		value32 = FUNC5(rtlpriv, REG_MCUFWDL);
	} while ((counter++ < max_count) &&
		 (!(value32 & FWDL_CHKSUM_RPT)));

	if (counter >= max_count) {
		FUNC2("chksum report fail ! REG_MCUFWDL:0x%08x .\n",
		       value32);
		goto exit;
	}
	value32 = FUNC5(rtlpriv, REG_MCUFWDL) | MCUFWDL_RDY;
	value32 &= ~WINTINI_RDY;
	FUNC6(rtlpriv, REG_MCUFWDL, value32);

	if (is_8723be)
		FUNC3(hw);
	counter = 0;

	do {
		value32 = FUNC5(rtlpriv, REG_MCUFWDL);
		if (value32 & WINTINI_RDY) {
			FUNC0(rtlpriv, COMP_FW, DBG_TRACE,
				 "Polling FW ready success!! REG_MCUFWDL:0x%08x .\n",
				 value32);
			err = 0;
			goto exit;
		}

		FUNC1(FW_8192C_POLLING_DELAY);

	} while (counter++ < max_count);

	FUNC2("Polling FW ready fail!! REG_MCUFWDL:0x%08x .\n",
	       value32);

exit:
	return err;
}