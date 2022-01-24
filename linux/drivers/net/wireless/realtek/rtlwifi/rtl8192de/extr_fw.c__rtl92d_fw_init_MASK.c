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
struct rtl_hal {scalar_t__ interfaceindex; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_FW ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  FW_MAC0_READY ; 
 int /*<<< orphan*/  FW_MAC1_READY ; 
 int MAC0_READY ; 
 int MAC1_READY ; 
 scalar_t__ POLLING_READY_TIMEOUT_COUNT ; 
 int /*<<< orphan*/  REG_MCUFWDL ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct rtl_hal* FUNC1 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC2 (struct ieee80211_hw*) ; 
 int FUNC3 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC2(hw);
	struct rtl_hal *rtlhal = FUNC1(FUNC2(hw));
	u32 counter;

	FUNC0(rtlpriv, COMP_FW, DBG_DMESG, "FW already have download\n");
	/* polling for FW ready */
	counter = 0;
	do {
		if (rtlhal->interfaceindex == 0) {
			if (FUNC3(rtlpriv, FW_MAC0_READY) &
			    MAC0_READY) {
				FUNC0(rtlpriv, COMP_FW, DBG_DMESG,
					 "Polling FW ready success!! REG_MCUFWDL: 0x%x\n",
					 FUNC3(rtlpriv,
						       FW_MAC0_READY));
				return 0;
			}
			FUNC5(5);
		} else {
			if (FUNC3(rtlpriv, FW_MAC1_READY) &
			    MAC1_READY) {
				FUNC0(rtlpriv, COMP_FW, DBG_DMESG,
					 "Polling FW ready success!! REG_MCUFWDL: 0x%x\n",
					 FUNC3(rtlpriv,
						       FW_MAC1_READY));
				return 0;
			}
			FUNC5(5);
		}
	} while (counter++ < POLLING_READY_TIMEOUT_COUNT);

	if (rtlhal->interfaceindex == 0) {
		FUNC0(rtlpriv, COMP_FW, DBG_DMESG,
			 "Polling FW ready fail!! MAC0 FW init not ready: 0x%x\n",
			 FUNC3(rtlpriv, FW_MAC0_READY));
	} else {
		FUNC0(rtlpriv, COMP_FW, DBG_DMESG,
			 "Polling FW ready fail!! MAC1 FW init not ready: 0x%x\n",
			 FUNC3(rtlpriv, FW_MAC1_READY));
	}
	FUNC0(rtlpriv, COMP_FW, DBG_DMESG,
		 "Polling FW ready fail!! REG_MCUFWDL:0x%08x\n",
		 FUNC4(rtlpriv, REG_MCUFWDL));
	return -1;
}