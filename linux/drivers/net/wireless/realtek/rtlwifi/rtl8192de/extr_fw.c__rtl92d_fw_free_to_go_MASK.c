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
 scalar_t__ FW_8192D_POLLING_TIMEOUT_COUNT ; 
 scalar_t__ MCUFWDL_RDY ; 
 int /*<<< orphan*/  REG_MCUFWDL ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 
 scalar_t__ FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	u32 counter = 0;
	u32 value32;

	do {
		value32 = FUNC2(rtlpriv, REG_MCUFWDL);
	} while ((counter++ < FW_8192D_POLLING_TIMEOUT_COUNT) &&
		 (!(value32 & FWDL_CHKSUM_RPT)));
	if (counter >= FW_8192D_POLLING_TIMEOUT_COUNT) {
		FUNC0("chksum report fail! REG_MCUFWDL:0x%08x\n",
		       value32);
		return -EIO;
	}
	value32 = FUNC2(rtlpriv, REG_MCUFWDL);
	value32 |= MCUFWDL_RDY;
	FUNC3(rtlpriv, REG_MCUFWDL, value32);
	return 0;
}